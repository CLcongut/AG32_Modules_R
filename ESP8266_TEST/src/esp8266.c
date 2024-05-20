#include "esp8266.h"

/*8266数据解析*/
unsigned short esp8266_cntPre = 0;

/*串口相关定义*/
unsigned char RxCounter = 0; //串口接收Counter
bool isRec = 0;
char rxbuf[150];	 //串口1接收缓存


/******************************************************************************
      函数说明：初始化串口1引脚
      入口数据：无
      返回值：  无
******************************************************************************/
void ESP8266_UART_Init(uint32_t bound)
{   
     GPIO_AF_ENABLE(UART1_UARTRXD) 
 	 GPIO_AF_ENABLE(UART1_UARTTXD);

  SYS_EnableAPBClock(APB_MASK_UART1);

  UART_Init(UART1, 115200, UART_LCR_DATABITS_8, UART_LCR_STOPBITS_1, 
  UART_LCR_PARITY_NONE, UART_LCR_FIFO_16);

  UART_EnableInt(UART1, UART_INT_RT); //配置 收超时中断
  UART_EnableInt(UART1, UART_INT_RX); //配置 收中断
  UART_SetRxIntFifoLevel(UART1, UART_INT_FIFO_HALF);  //配置FIFO收多少字节时产生收中断
  INT_EnableIRQ(UART1_IRQn, UART_PRIORITY);



}


/******************************************************************************
      函数说明：串口1发送字符
      入口数据：无
      返回值：  无
******************************************************************************/
void uart1_send(unsigned char *bufs,unsigned char len)
{
    UART_Send(UART1,bufs,len);
}

//==========================================================
//	函数名称：	ESP8266_Clear
//
//	函数功能：	清空缓存
//
//	入口参数：	无
//
//	返回参数：	无
//
//	说明：	
//==========================================================
void ESP8266_Clear(void)
{
	memset(ESP8266_BUF, 0, sizeof(ESP8266_BUF));
	ESP8266_CNT = 0;
}

//==========================================================
//	函数名称：	ESP8266_WaitRecive
//
//	函数功能：	等待接收完成
//
//	入口参数：	无
//
//	返回参数：	REV_OK-接收完成		REV_WAIT-接收超时未完成
//
//	说明：		循环调用检测是否接收完成
//==========================================================
_Bool ESP8266_WaitRecive(void)
{
	if(ESP8266_CNT == 0) 							//如果接收计数为0 则说明没有处于接收数据中，所以直接跳出，结束函数
		return REV_WAIT;
		
	if(ESP8266_CNT == esp8266_cntPre)				//如果上一次的值和这次相同，则说明接收完毕
	{
		ESP8266_CNT = 0;							//清0接收计数
			
		return REV_OK;								//返回接收完成标志
	}
		
	esp8266_cntPre = ESP8266_CNT;					//置为相同
	
	return REV_WAIT;								//返回接收未完成标志
}

//==========================================================
//	函数名称：	ESP8266_SendCmd
//
//	函数功能：	发送命令
//
//	入口参数：	cmd：命令
//				res：需要检查的返回指令
//
//	返回参数：	0-成功	1-失败
//
//	说明：		
//==========================================================
_Bool ESP8266_SendCmd(char *cmd, char *res, uint16_t time)
{	
  uart1_send((unsigned char *)cmd,strlen((const char *)cmd));
	
	while(time--)
	{
		if(ESP8266_WaitRecive() == REV_OK)							//如果收到数据
		{
			if(strstr((const char *)ESP8266_BUF, res) != NULL)		//如果检索到关键词
			{
				ESP8266_Clear();									//清空缓存
				
				return 0;
			}
		}
		
		delay_ms(1);
	}
	
	return 1;

}

//==========================================================
//	函数名称：	ESP8266_SendData
//
//	函数功能：	发送数据
//
//	入口参数：	data：数据
//				len：长度
//
//	返回参数：	无
//
//	说明：		
//==========================================================
void ESP8266_SendData(unsigned char *data, unsigned short len)
{

	char cmdBuf[32];
	
	ESP8266_Clear();								//清空接收缓存
	sprintf(cmdBuf, "AT+CIPSEND=0,%d\r\n", len);		//发送命令
	if(!ESP8266_SendCmd(cmdBuf, ">", 200))				//收到‘>’时可以发送数据
	{
			uart1_send(data , len);         //发送设备连接请求数据
	}
}

//==========================================================
//	函数名称：	ESP8266_GetIPD
//
//	函数功能：	获取平台返回的数据
//
//	入口参数：	等待的时间(乘以10ms)
//
//	返回参数：	平台返回的原始数据
//
//	说明：		不同网络设备返回的格式不同，需要去调试
//				如ESP8266的返回格式为	"+IPD,x:yyy"	x代表数据长度，yyy是数据内容
//==========================================================
unsigned char *ESP8266_GetIPD(unsigned short timeOut)
{

	char *ptrIPD = NULL;
	
	do
	{
		if(ESP8266_WaitRecive() == REV_OK)								//如果接收完成
		{
			ptrIPD = strstr((char *)ESP8266_BUF, "IPD,");				//搜索“IPD”头
			if(ptrIPD == NULL)											//如果没找到，可能是IPD头的延迟，还是需要等待一会，但不会超过设定的时间
			{
				//printf("\"IPD\" not found\r\n");
			}
			else
			{
				ptrIPD = strchr(ptrIPD, ':');							//找到':'
				if(ptrIPD != NULL)
				{
					ptrIPD++;
					return (unsigned char *)(ptrIPD);
				}
				else
					return NULL;
				
			}
		}
		delay_ms(1);													//延时等待
	} while(timeOut--);
	
	return NULL;														//超时还未找到，返回空指针

}

//==========================================================
//	函数名称：	ESP8266_Init
//
//	函数功能：	初始化ESP8266
//
//	入口参数：	无
//
//	返回参数：	无
//
//	说明：		
//==========================================================
void ESP8266_Init(void)
{
	ESP8266_UART_Init(115200);   //串口初始化
	
	ESP8266_Clear();
	while(ESP8266_SendCmd("AT\r\n\r", "OK", 200))         //测试
	delay_ms(500);
	
	while(ESP8266_SendCmd("AT+CWMODE=2\r\n", "OK", 200))  //服务器搭建在WIFI模块上
	delay_ms(500);
	
	while(ESP8266_SendCmd("AT+CWSAP=\"ESP8266_WIFI\",\"12345678\",5,3\r\n", "OK", 200)) //设置显示名称:ESP8266_WIFI,密码:12345678
	delay_ms(500);
	
	while(ESP8266_SendCmd("AT+CIPMUX=1\r\n", "OK", 200))  //启动多连接，建立服务器都需要配置
	delay_ms(500);
	
	while(ESP8266_SendCmd("AT+CIPSERVER=1,8080\r\n", "OK", 200))  //建立服务器
	delay_ms(500);
}

/******************************************************************************
      函数说明：串口1中断服务函数
      入口数据：无
      返回值：  无
******************************************************************************/
  
void UART1_isr()
{
  if (UART_IsRawIntActive(UART1, UART_INT_RX)) {
    UART_ClearInt(UART1, UART_INT_RX);
    //注意：这时FIFO里有8个字节长度，但特意不全部收取。
    //这么做，是为了保证传输数据刚好是8的整数倍时，仍然会触发下边的UART_INT_RT中断。
    UART_Receive(UART1, rxbuf + RxCounter, 7, 0); //half: 16/2=8。
    RxCounter += 7;
  }
  else if (UART_IsRawIntActive(UART1, UART_INT_RT)) {
    UART_ClearInt(UART1, UART_INT_RT);
    RxCounter += UART_Receive(UART1, rxbuf + RxCounter, 8, 1); //最后一个参数不能为0，为0时UART_Receive是不会超时退出的
    isRec = 1;  //idle一包收满
  }
}

// void TestUartRxIdleIqr(void)
// {
//   GPIO_AF_ENABLE(UART1_UARTRXD) 
//   GPIO_AF_ENABLE(UART1_UARTTXD);
//   SYS_EnableAPBClock(APB_MASK_UART1);

//   UART_Init(UART1, 115200, UART_LCR_DATABITS_8, UART_LCR_STOPBITS_1, UART_LCR_PARITY_NONE, UART_LCR_FIFO_16);

//   UART_EnableInt(UART1, UART_INT_RT); //配置 收超时中断
//   UART_EnableInt(UART1, UART_INT_RX); //配置 收中断
//   UART_SetRxIntFifoLevel(UART1, UART_INT_FIFO_HALF);  //配置FIFO收多少字节时产生收中断
//   INT_EnableIRQ(UART1_IRQn, UART_PRIORITY);

//   UART_Send(UART1, "test idleIrq\r\n", strlen("test idleIrq\r\n"));
//   //test
//   while(1)
//   {
//     UTIL_IdleUs(500e3);

//     if (isRec == 1)
//     {
//       UART_Send(UART1, rxbuf, RxCounter);
//       RxCounter = 0;
//       isRec = 0;
//     }
//   }
// }
