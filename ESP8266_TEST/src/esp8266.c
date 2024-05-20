#include "esp8266.h"

/*8266���ݽ���*/
unsigned short esp8266_cntPre = 0;

/*������ض���*/
unsigned char RxCounter = 0; //���ڽ���Counter
bool isRec = 0;
char rxbuf[150];	 //����1���ջ���


/******************************************************************************
      ����˵������ʼ������1����
      ������ݣ���
      ����ֵ��  ��
******************************************************************************/
void ESP8266_UART_Init(uint32_t bound)
{   
     GPIO_AF_ENABLE(UART1_UARTRXD) 
 	 GPIO_AF_ENABLE(UART1_UARTTXD);

  SYS_EnableAPBClock(APB_MASK_UART1);

  UART_Init(UART1, 115200, UART_LCR_DATABITS_8, UART_LCR_STOPBITS_1, 
  UART_LCR_PARITY_NONE, UART_LCR_FIFO_16);

  UART_EnableInt(UART1, UART_INT_RT); //���� �ճ�ʱ�ж�
  UART_EnableInt(UART1, UART_INT_RX); //���� ���ж�
  UART_SetRxIntFifoLevel(UART1, UART_INT_FIFO_HALF);  //����FIFO�ն����ֽ�ʱ�������ж�
  INT_EnableIRQ(UART1_IRQn, UART_PRIORITY);



}


/******************************************************************************
      ����˵��������1�����ַ�
      ������ݣ���
      ����ֵ��  ��
******************************************************************************/
void uart1_send(unsigned char *bufs,unsigned char len)
{
    UART_Send(UART1,bufs,len);
}

//==========================================================
//	�������ƣ�	ESP8266_Clear
//
//	�������ܣ�	��ջ���
//
//	��ڲ�����	��
//
//	���ز�����	��
//
//	˵����	
//==========================================================
void ESP8266_Clear(void)
{
	memset(ESP8266_BUF, 0, sizeof(ESP8266_BUF));
	ESP8266_CNT = 0;
}

//==========================================================
//	�������ƣ�	ESP8266_WaitRecive
//
//	�������ܣ�	�ȴ��������
//
//	��ڲ�����	��
//
//	���ز�����	REV_OK-�������		REV_WAIT-���ճ�ʱδ���
//
//	˵����		ѭ�����ü���Ƿ�������
//==========================================================
_Bool ESP8266_WaitRecive(void)
{
	if(ESP8266_CNT == 0) 							//������ռ���Ϊ0 ��˵��û�д��ڽ��������У�����ֱ����������������
		return REV_WAIT;
		
	if(ESP8266_CNT == esp8266_cntPre)				//�����һ�ε�ֵ�������ͬ����˵���������
	{
		ESP8266_CNT = 0;							//��0���ռ���
			
		return REV_OK;								//���ؽ�����ɱ�־
	}
		
	esp8266_cntPre = ESP8266_CNT;					//��Ϊ��ͬ
	
	return REV_WAIT;								//���ؽ���δ��ɱ�־
}

//==========================================================
//	�������ƣ�	ESP8266_SendCmd
//
//	�������ܣ�	��������
//
//	��ڲ�����	cmd������
//				res����Ҫ���ķ���ָ��
//
//	���ز�����	0-�ɹ�	1-ʧ��
//
//	˵����		
//==========================================================
_Bool ESP8266_SendCmd(char *cmd, char *res, uint16_t time)
{	
  uart1_send((unsigned char *)cmd,strlen((const char *)cmd));
	
	while(time--)
	{
		if(ESP8266_WaitRecive() == REV_OK)							//����յ�����
		{
			if(strstr((const char *)ESP8266_BUF, res) != NULL)		//����������ؼ���
			{
				ESP8266_Clear();									//��ջ���
				
				return 0;
			}
		}
		
		delay_ms(1);
	}
	
	return 1;

}

//==========================================================
//	�������ƣ�	ESP8266_SendData
//
//	�������ܣ�	��������
//
//	��ڲ�����	data������
//				len������
//
//	���ز�����	��
//
//	˵����		
//==========================================================
void ESP8266_SendData(unsigned char *data, unsigned short len)
{

	char cmdBuf[32];
	
	ESP8266_Clear();								//��ս��ջ���
	sprintf(cmdBuf, "AT+CIPSEND=0,%d\r\n", len);		//��������
	if(!ESP8266_SendCmd(cmdBuf, ">", 200))				//�յ���>��ʱ���Է�������
	{
			uart1_send(data , len);         //�����豸������������
	}
}

//==========================================================
//	�������ƣ�	ESP8266_GetIPD
//
//	�������ܣ�	��ȡƽ̨���ص�����
//
//	��ڲ�����	�ȴ���ʱ��(����10ms)
//
//	���ز�����	ƽ̨���ص�ԭʼ����
//
//	˵����		��ͬ�����豸���صĸ�ʽ��ͬ����Ҫȥ����
//				��ESP8266�ķ��ظ�ʽΪ	"+IPD,x:yyy"	x�������ݳ��ȣ�yyy����������
//==========================================================
unsigned char *ESP8266_GetIPD(unsigned short timeOut)
{

	char *ptrIPD = NULL;
	
	do
	{
		if(ESP8266_WaitRecive() == REV_OK)								//����������
		{
			ptrIPD = strstr((char *)ESP8266_BUF, "IPD,");				//������IPD��ͷ
			if(ptrIPD == NULL)											//���û�ҵ���������IPDͷ���ӳ٣�������Ҫ�ȴ�һ�ᣬ�����ᳬ���趨��ʱ��
			{
				//printf("\"IPD\" not found\r\n");
			}
			else
			{
				ptrIPD = strchr(ptrIPD, ':');							//�ҵ�':'
				if(ptrIPD != NULL)
				{
					ptrIPD++;
					return (unsigned char *)(ptrIPD);
				}
				else
					return NULL;
				
			}
		}
		delay_ms(1);													//��ʱ�ȴ�
	} while(timeOut--);
	
	return NULL;														//��ʱ��δ�ҵ������ؿ�ָ��

}

//==========================================================
//	�������ƣ�	ESP8266_Init
//
//	�������ܣ�	��ʼ��ESP8266
//
//	��ڲ�����	��
//
//	���ز�����	��
//
//	˵����		
//==========================================================
void ESP8266_Init(void)
{
	ESP8266_UART_Init(115200);   //���ڳ�ʼ��
	
	ESP8266_Clear();
	while(ESP8266_SendCmd("AT\r\n\r", "OK", 200))         //����
	delay_ms(500);
	
	while(ESP8266_SendCmd("AT+CWMODE=2\r\n", "OK", 200))  //���������WIFIģ����
	delay_ms(500);
	
	while(ESP8266_SendCmd("AT+CWSAP=\"ESP8266_WIFI\",\"12345678\",5,3\r\n", "OK", 200)) //������ʾ����:ESP8266_WIFI,����:12345678
	delay_ms(500);
	
	while(ESP8266_SendCmd("AT+CIPMUX=1\r\n", "OK", 200))  //���������ӣ���������������Ҫ����
	delay_ms(500);
	
	while(ESP8266_SendCmd("AT+CIPSERVER=1,8080\r\n", "OK", 200))  //����������
	delay_ms(500);
}

/******************************************************************************
      ����˵��������1�жϷ�����
      ������ݣ���
      ����ֵ��  ��
******************************************************************************/
  
void UART1_isr()
{
  if (UART_IsRawIntActive(UART1, UART_INT_RX)) {
    UART_ClearInt(UART1, UART_INT_RX);
    //ע�⣺��ʱFIFO����8���ֽڳ��ȣ������ⲻȫ����ȡ��
    //��ô������Ϊ�˱�֤�������ݸպ���8��������ʱ����Ȼ�ᴥ���±ߵ�UART_INT_RT�жϡ�
    UART_Receive(UART1, rxbuf + RxCounter, 7, 0); //half: 16/2=8��
    RxCounter += 7;
  }
  else if (UART_IsRawIntActive(UART1, UART_INT_RT)) {
    UART_ClearInt(UART1, UART_INT_RT);
    RxCounter += UART_Receive(UART1, rxbuf + RxCounter, 8, 1); //���һ����������Ϊ0��Ϊ0ʱUART_Receive�ǲ��ᳬʱ�˳���
    isRec = 1;  //idleһ������
  }
}

// void TestUartRxIdleIqr(void)
// {
//   GPIO_AF_ENABLE(UART1_UARTRXD) 
//   GPIO_AF_ENABLE(UART1_UARTTXD);
//   SYS_EnableAPBClock(APB_MASK_UART1);

//   UART_Init(UART1, 115200, UART_LCR_DATABITS_8, UART_LCR_STOPBITS_1, UART_LCR_PARITY_NONE, UART_LCR_FIFO_16);

//   UART_EnableInt(UART1, UART_INT_RT); //���� �ճ�ʱ�ж�
//   UART_EnableInt(UART1, UART_INT_RX); //���� ���ж�
//   UART_SetRxIntFifoLevel(UART1, UART_INT_FIFO_HALF);  //����FIFO�ն����ֽ�ʱ�������ж�
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
