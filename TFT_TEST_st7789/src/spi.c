#include "spi.h"


static SPI_TypeDef *spi __attribute__((aligned(4))) = (SPI_TypeDef *)0x0;
static DMAC_ChannelNumTypeDef spi_dmac_channel = DMAC_CHANNEL6;

static volatile bool spi_isr_done = false;

// Name based isr predefined as weak in plic_isr
void SPI0_isr()
{
	SPI_ClearInt(spi);
	DMAC_DisableChannel(spi_dmac_channel);
	spi_isr_done = true;
}

// SPI0+DMA��ʼ��
void SPI0_DMA_Init(void)
{   
    //DNAʱ�ӿ���
    SYS_EnableAHBClock(AHB_MASK_DMAC0);

    //DMA��ʼ��
	DMAC_Init();

    //ʹ��SPI0
	PERIPHERAL_ENABLE_ALL(SPI, 0);

    //SPI0�жϳ�ʼ��
    INT_EnableIRQ(SPIx_IRQn(0), 1);

    //DMA TX RXʧ��
    DMAC_DisableSyncRequest(SPI_TX_DMA_REQ(spi));
	DMAC_DisableSyncRequest(SPI_RX_DMA_REQ(spi));

    //��ȡϵͳʱ��
    uint32_t pclk_freq = SYS_GetPclkFreq();

    //SPI0Ԥ��Ƶ
    SPI_SclkDivTypeDef spi_sclk_div = pclk_freq > 240 ? SPI_CTRL_SCLK_DIV16 : pclk_freq > 120 ? SPI_CTRL_SCLK_DIV8
																							  : SPI_CTRL_SCLK_DIV4;
    //SPI�����ʼ��
    SPI_Init(spi, spi_sclk_div);
}

//SPIx ��дһ���ֽ�
//TxData:Ҫд����ֽ�
//����ֵ:��ȡ�����ֽ�
uint8_t SPI0_ReadWriteByte(uint8_t TxData)
{		
	#if USING_HARDWARE_SPI
    SPI_SendAndReceive(spi,4,TxData,4);
  #endif

  #if USING_SOLFTWARE_SPI

    uint8_t i;

    for(i=0;i<8;i++)
	  {			  
		  LCD_SCK_Clr();
		  if(TxData&0x80)
		    {
		     LCD_MOSI_Set();
		    }
		  else
		    {
		    LCD_MOSI_Clr();
		    }
		  LCD_SCK_Set();
		  TxData<<=1;
	  }	
    
  #endif
}

//����SPI����
//SPIx ��дһ���ֽ�
//NEWSATE:״̬
void SPI_Cmd(SPI_TypeDef* Spi, uint8_t NewState)
{
  if (NewState != DISABLE)
  {
    /* Enable the selected SPI peripheral */
    SPI_FLASH_SingleCmd(spi, SPI_FLASH_CMD_WREN);
  }
  else
  {
    /* Disable the selected SPI peripheral */
    SPI_FLASH_SingleCmd(spi, SPI_FLASH_CMD_WRDIS);
  }
}