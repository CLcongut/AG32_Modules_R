`timescale 1 ps/ 1 ps

module top(
	PIN_23,
	PIN_24,
	PIN_26,
	PIN_29,
	PIN_30,
	PIN_46,
	PIN_47,
	PIN_48,
	PIN_51,
	PIN_52,
	PIN_62,
	PIN_68,
	PIN_69,
	PIN_78,
	PIN_HSE,
	PIN_HSI,
	PIN_OSC);
inout	PIN_23;
inout	PIN_24;
inout	PIN_26;
inout	PIN_29;
inout	PIN_30;
inout	PIN_46;
inout	PIN_47;
inout	PIN_48;
inout	PIN_51;
inout	PIN_52;
input	PIN_62;
output	PIN_68;
input	PIN_69;
input	PIN_78;
input	PIN_HSE;
input	PIN_HSI;
input	PIN_OSC;

//wire	gnd;
//wire	vcc;
wire	PIN_23_in;
wire	PIN_24_in;
wire	PIN_26_in;
wire	PIN_29_in;
wire	PIN_30_in;
wire	PIN_46_in;
wire	PIN_47_in;
wire	PIN_48_in;
wire	PIN_51_in;
wire	PIN_52_in;
wire	PIN_62_in;
wire	PIN_69_in;
wire	PIN_78_in;
wire	PIN_HSE_in;
wire	PIN_HSI_in;
wire	PIN_OSC_in;
wire	[4:0] PLL_CLKOUT;
//wire	PLL_CLKOUT[0];
//wire	PLL_CLKOUT[1];
wire	\PLL_CLKOUT[1]_int ;
//wire	PLL_CLKOUT[2];
//wire	PLL_CLKOUT[3];
//wire	PLL_CLKOUT[4];
wire	PLL_ENABLE;
wire	PLL_LOCK;
wire	[3:0] ext_dma_DMACBREQ;
//wire	ext_dma_DMACBREQ[0];
//wire	ext_dma_DMACBREQ[1];
//wire	ext_dma_DMACBREQ[2];
//wire	ext_dma_DMACBREQ[3];
wire	[3:0] ext_dma_DMACCLR;
//wire	ext_dma_DMACCLR[0];
//wire	ext_dma_DMACCLR[1];
//wire	ext_dma_DMACCLR[2];
//wire	ext_dma_DMACCLR[3];
wire	[3:0] ext_dma_DMACLBREQ;
//wire	ext_dma_DMACLBREQ[0];
//wire	ext_dma_DMACLBREQ[1];
//wire	ext_dma_DMACLBREQ[2];
//wire	ext_dma_DMACLBREQ[3];
wire	[3:0] ext_dma_DMACLSREQ;
//wire	ext_dma_DMACLSREQ[0];
//wire	ext_dma_DMACLSREQ[1];
//wire	ext_dma_DMACLSREQ[2];
//wire	ext_dma_DMACLSREQ[3];
wire	[3:0] ext_dma_DMACSREQ;
//wire	ext_dma_DMACSREQ[0];
//wire	ext_dma_DMACSREQ[1];
//wire	ext_dma_DMACSREQ[2];
//wire	ext_dma_DMACSREQ[3];
wire	[3:0] ext_dma_DMACTC;
//wire	ext_dma_DMACTC[0];
//wire	ext_dma_DMACTC[1];
//wire	ext_dma_DMACTC[2];
//wire	ext_dma_DMACTC[3];
wire	[7:0] gpio0_io_in;
//wire	gpio0_io_in[0];
//wire	gpio0_io_in[1];
//wire	gpio0_io_in[2];
//wire	gpio0_io_in[3];
//wire	gpio0_io_in[4];
//wire	gpio0_io_in[5];
//wire	gpio0_io_in[6];
//wire	gpio0_io_in[7];
wire	[7:0] gpio0_io_out_data;
//wire	gpio0_io_out_data[0];
//wire	gpio0_io_out_data[1];
//wire	gpio0_io_out_data[2];
//wire	gpio0_io_out_data[3];
//wire	gpio0_io_out_data[4];
//wire	gpio0_io_out_data[5];
//wire	gpio0_io_out_data[6];
//wire	gpio0_io_out_data[7];
wire	[7:0] gpio0_io_out_en;
//wire	gpio0_io_out_en[0];
//wire	gpio0_io_out_en[1];
//wire	gpio0_io_out_en[2];
//wire	gpio0_io_out_en[3];
//wire	gpio0_io_out_en[4];
//wire	gpio0_io_out_en[5];
//wire	gpio0_io_out_en[6];
//wire	gpio0_io_out_en[7];
wire	[7:0] gpio1_io_in;
//wire	gpio1_io_in[0];
//wire	gpio1_io_in[1];
//wire	gpio1_io_in[2];
//wire	gpio1_io_in[3];
//wire	gpio1_io_in[4];
//wire	gpio1_io_in[5];
//wire	gpio1_io_in[6];
//wire	gpio1_io_in[7];
wire	[7:0] gpio1_io_out_data;
//wire	gpio1_io_out_data[0];
//wire	gpio1_io_out_data[1];
//wire	gpio1_io_out_data[2];
//wire	gpio1_io_out_data[3];
//wire	gpio1_io_out_data[4];
//wire	gpio1_io_out_data[5];
//wire	gpio1_io_out_data[6];
//wire	gpio1_io_out_data[7];
wire	[7:0] gpio1_io_out_en;
//wire	gpio1_io_out_en[0];
//wire	gpio1_io_out_en[1];
//wire	gpio1_io_out_en[2];
//wire	gpio1_io_out_en[3];
//wire	gpio1_io_out_en[4];
//wire	gpio1_io_out_en[5];
//wire	gpio1_io_out_en[6];
//wire	gpio1_io_out_en[7];
wire	[7:0] gpio2_io_in;
//wire	gpio2_io_in[0];
//wire	gpio2_io_in[1];
//wire	gpio2_io_in[2];
//wire	gpio2_io_in[3];
//wire	gpio2_io_in[4];
//wire	gpio2_io_in[5];
//wire	gpio2_io_in[6];
//wire	gpio2_io_in[7];
wire	[7:0] gpio2_io_out_data;
//wire	gpio2_io_out_data[0];
//wire	gpio2_io_out_data[1];
//wire	gpio2_io_out_data[2];
//wire	gpio2_io_out_data[3];
//wire	gpio2_io_out_data[4];
//wire	gpio2_io_out_data[5];
//wire	gpio2_io_out_data[6];
//wire	gpio2_io_out_data[7];
wire	[7:0] gpio2_io_out_en;
//wire	gpio2_io_out_en[0];
//wire	gpio2_io_out_en[1];
//wire	gpio2_io_out_en[2];
//wire	gpio2_io_out_en[3];
//wire	gpio2_io_out_en[4];
//wire	gpio2_io_out_en[5];
//wire	gpio2_io_out_en[6];
//wire	gpio2_io_out_en[7];
wire	[7:0] gpio3_io_in;
//wire	gpio3_io_in[0];
//wire	gpio3_io_in[1];
//wire	gpio3_io_in[2];
//wire	gpio3_io_in[3];
//wire	gpio3_io_in[4];
//wire	gpio3_io_in[5];
//wire	gpio3_io_in[6];
//wire	gpio3_io_in[7];
wire	[7:0] gpio3_io_out_data;
//wire	gpio3_io_out_data[0];
//wire	gpio3_io_out_data[1];
//wire	gpio3_io_out_data[2];
//wire	gpio3_io_out_data[3];
//wire	gpio3_io_out_data[4];
//wire	gpio3_io_out_data[5];
//wire	gpio3_io_out_data[6];
//wire	gpio3_io_out_data[7];
wire	[7:0] gpio3_io_out_en;
//wire	gpio3_io_out_en[0];
//wire	gpio3_io_out_en[1];
//wire	gpio3_io_out_en[2];
//wire	gpio3_io_out_en[3];
//wire	gpio3_io_out_en[4];
//wire	gpio3_io_out_en[5];
//wire	gpio3_io_out_en[6];
//wire	gpio3_io_out_en[7];
wire	[7:0] gpio4_io_in;
//wire	gpio4_io_in[0];
//wire	gpio4_io_in[1];
//wire	gpio4_io_in[2];
//wire	gpio4_io_in[3];
//wire	gpio4_io_in[4];
//wire	gpio4_io_in[5];
//wire	gpio4_io_in[6];
//wire	gpio4_io_in[7];
wire	[7:0] gpio4_io_out_data;
//wire	gpio4_io_out_data[0];
//wire	gpio4_io_out_data[1];
//wire	gpio4_io_out_data[2];
//wire	gpio4_io_out_data[3];
//wire	gpio4_io_out_data[4];
//wire	gpio4_io_out_data[5];
//wire	gpio4_io_out_data[6];
//wire	gpio4_io_out_data[7];
wire	[7:0] gpio4_io_out_en;
//wire	gpio4_io_out_en[0];
//wire	gpio4_io_out_en[1];
//wire	gpio4_io_out_en[2];
//wire	gpio4_io_out_en[3];
//wire	gpio4_io_out_en[4];
//wire	gpio4_io_out_en[5];
//wire	gpio4_io_out_en[6];
//wire	gpio4_io_out_en[7];
wire	[7:0] gpio5_io_in;
//wire	gpio5_io_in[0];
//wire	gpio5_io_in[1];
//wire	gpio5_io_in[2];
//wire	gpio5_io_in[3];
//wire	gpio5_io_in[4];
//wire	gpio5_io_in[5];
//wire	gpio5_io_in[6];
//wire	gpio5_io_in[7];
wire	[7:0] gpio5_io_out_data;
//wire	gpio5_io_out_data[0];
//wire	gpio5_io_out_data[1];
//wire	gpio5_io_out_data[2];
//wire	gpio5_io_out_data[3];
//wire	gpio5_io_out_data[4];
//wire	gpio5_io_out_data[5];
//wire	gpio5_io_out_data[6];
//wire	gpio5_io_out_data[7];
wire	[7:0] gpio5_io_out_en;
//wire	gpio5_io_out_en[0];
//wire	gpio5_io_out_en[1];
//wire	gpio5_io_out_en[2];
//wire	gpio5_io_out_en[3];
//wire	gpio5_io_out_en[4];
//wire	gpio5_io_out_en[5];
//wire	gpio5_io_out_en[6];
//wire	gpio5_io_out_en[7];
wire	[7:0] gpio6_io_in;
//wire	gpio6_io_in[0];
//wire	gpio6_io_in[1];
//wire	gpio6_io_in[2];
//wire	gpio6_io_in[3];
//wire	gpio6_io_in[4];
//wire	gpio6_io_in[5];
//wire	gpio6_io_in[6];
//wire	gpio6_io_in[7];
wire	[7:0] gpio6_io_out_data;
//wire	gpio6_io_out_data[0];
//wire	gpio6_io_out_data[1];
//wire	gpio6_io_out_data[2];
//wire	gpio6_io_out_data[3];
//wire	gpio6_io_out_data[4];
//wire	gpio6_io_out_data[5];
//wire	gpio6_io_out_data[6];
//wire	gpio6_io_out_data[7];
wire	[7:0] gpio6_io_out_en;
//wire	gpio6_io_out_en[0];
//wire	gpio6_io_out_en[1];
//wire	gpio6_io_out_en[2];
//wire	gpio6_io_out_en[3];
//wire	gpio6_io_out_en[4];
//wire	gpio6_io_out_en[5];
//wire	gpio6_io_out_en[6];
//wire	gpio6_io_out_en[7];
wire	[7:0] gpio7_io_in;
//wire	gpio7_io_in[0];
//wire	gpio7_io_in[1];
//wire	gpio7_io_in[2];
//wire	gpio7_io_in[3];
//wire	gpio7_io_in[4];
//wire	gpio7_io_in[5];
//wire	gpio7_io_in[6];
//wire	gpio7_io_in[7];
wire	[7:0] gpio7_io_out_data;
//wire	gpio7_io_out_data[0];
//wire	gpio7_io_out_data[1];
//wire	gpio7_io_out_data[2];
//wire	gpio7_io_out_data[3];
//wire	gpio7_io_out_data[4];
//wire	gpio7_io_out_data[5];
//wire	gpio7_io_out_data[6];
//wire	gpio7_io_out_data[7];
wire	[7:0] gpio7_io_out_en;
//wire	gpio7_io_out_en[0];
//wire	gpio7_io_out_en[1];
//wire	gpio7_io_out_en[2];
//wire	gpio7_io_out_en[3];
//wire	gpio7_io_out_en[4];
//wire	gpio7_io_out_en[5];
//wire	gpio7_io_out_en[6];
//wire	gpio7_io_out_en[7];
wire	[7:0] gpio8_io_in;
//wire	gpio8_io_in[0];
//wire	gpio8_io_in[1];
//wire	gpio8_io_in[2];
//wire	gpio8_io_in[3];
//wire	gpio8_io_in[4];
//wire	gpio8_io_in[5];
//wire	gpio8_io_in[6];
//wire	gpio8_io_in[7];
wire	[7:0] gpio8_io_out_data;
//wire	gpio8_io_out_data[0];
//wire	gpio8_io_out_data[1];
//wire	gpio8_io_out_data[2];
//wire	gpio8_io_out_data[3];
//wire	gpio8_io_out_data[4];
//wire	gpio8_io_out_data[5];
//wire	gpio8_io_out_data[6];
//wire	gpio8_io_out_data[7];
wire	[7:0] gpio8_io_out_en;
//wire	gpio8_io_out_en[0];
//wire	gpio8_io_out_en[1];
//wire	gpio8_io_out_en[2];
//wire	gpio8_io_out_en[3];
//wire	gpio8_io_out_en[4];
//wire	gpio8_io_out_en[5];
//wire	gpio8_io_out_en[6];
//wire	gpio8_io_out_en[7];
wire	[7:0] gpio9_io_in;
//wire	gpio9_io_in[0];
//wire	gpio9_io_in[1];
//wire	gpio9_io_in[2];
//wire	gpio9_io_in[3];
//wire	gpio9_io_in[4];
//wire	gpio9_io_in[5];
//wire	gpio9_io_in[6];
//wire	gpio9_io_in[7];
wire	[7:0] gpio9_io_out_data;
//wire	gpio9_io_out_data[0];
//wire	gpio9_io_out_data[1];
//wire	gpio9_io_out_data[2];
//wire	gpio9_io_out_data[3];
//wire	gpio9_io_out_data[4];
//wire	gpio9_io_out_data[5];
//wire	gpio9_io_out_data[6];
//wire	gpio9_io_out_data[7];
wire	[7:0] gpio9_io_out_en;
//wire	gpio9_io_out_en[0];
//wire	gpio9_io_out_en[1];
//wire	gpio9_io_out_en[2];
//wire	gpio9_io_out_en[3];
//wire	gpio9_io_out_en[4];
//wire	gpio9_io_out_en[5];
//wire	gpio9_io_out_en[6];
//wire	gpio9_io_out_en[7];
wire	[3:0] local_int;
//wire	local_int[0];
//wire	local_int[1];
//wire	local_int[2];
//wire	local_int[3];
wire	[31:0] mem_ahb_haddr;
//wire	mem_ahb_haddr[0];
//wire	mem_ahb_haddr[10];
//wire	mem_ahb_haddr[11];
//wire	mem_ahb_haddr[12];
//wire	mem_ahb_haddr[13];
//wire	mem_ahb_haddr[14];
//wire	mem_ahb_haddr[15];
//wire	mem_ahb_haddr[16];
//wire	mem_ahb_haddr[17];
//wire	mem_ahb_haddr[18];
//wire	mem_ahb_haddr[19];
//wire	mem_ahb_haddr[1];
//wire	mem_ahb_haddr[20];
//wire	mem_ahb_haddr[21];
//wire	mem_ahb_haddr[22];
//wire	mem_ahb_haddr[23];
//wire	mem_ahb_haddr[24];
//wire	mem_ahb_haddr[25];
//wire	mem_ahb_haddr[26];
//wire	mem_ahb_haddr[27];
//wire	mem_ahb_haddr[28];
//wire	mem_ahb_haddr[29];
//wire	mem_ahb_haddr[2];
//wire	mem_ahb_haddr[30];
//wire	mem_ahb_haddr[31];
//wire	mem_ahb_haddr[3];
//wire	mem_ahb_haddr[4];
//wire	mem_ahb_haddr[5];
//wire	mem_ahb_haddr[6];
//wire	mem_ahb_haddr[7];
//wire	mem_ahb_haddr[8];
//wire	mem_ahb_haddr[9];
wire	[2:0] mem_ahb_hburst;
//wire	mem_ahb_hburst[0];
//wire	mem_ahb_hburst[1];
//wire	mem_ahb_hburst[2];
wire	[31:0] mem_ahb_hrdata;
//wire	mem_ahb_hrdata[0];
//wire	mem_ahb_hrdata[10];
//wire	mem_ahb_hrdata[11];
//wire	mem_ahb_hrdata[12];
//wire	mem_ahb_hrdata[13];
//wire	mem_ahb_hrdata[14];
//wire	mem_ahb_hrdata[15];
//wire	mem_ahb_hrdata[16];
//wire	mem_ahb_hrdata[17];
//wire	mem_ahb_hrdata[18];
//wire	mem_ahb_hrdata[19];
//wire	mem_ahb_hrdata[1];
//wire	mem_ahb_hrdata[20];
//wire	mem_ahb_hrdata[21];
//wire	mem_ahb_hrdata[22];
//wire	mem_ahb_hrdata[23];
//wire	mem_ahb_hrdata[24];
//wire	mem_ahb_hrdata[25];
//wire	mem_ahb_hrdata[26];
//wire	mem_ahb_hrdata[27];
//wire	mem_ahb_hrdata[28];
//wire	mem_ahb_hrdata[29];
//wire	mem_ahb_hrdata[2];
//wire	mem_ahb_hrdata[30];
//wire	mem_ahb_hrdata[31];
//wire	mem_ahb_hrdata[3];
//wire	mem_ahb_hrdata[4];
//wire	mem_ahb_hrdata[5];
//wire	mem_ahb_hrdata[6];
//wire	mem_ahb_hrdata[7];
//wire	mem_ahb_hrdata[8];
//wire	mem_ahb_hrdata[9];
wire	mem_ahb_hready;
wire	[2:0] mem_ahb_hsize;
//wire	mem_ahb_hsize[0];
//wire	mem_ahb_hsize[1];
//wire	mem_ahb_hsize[2];
wire	[1:0] mem_ahb_htrans;
//wire	mem_ahb_htrans[0];
//wire	mem_ahb_htrans[1];
wire	[31:0] mem_ahb_hwdata;
//wire	mem_ahb_hwdata[0];
//wire	mem_ahb_hwdata[10];
//wire	mem_ahb_hwdata[11];
//wire	mem_ahb_hwdata[12];
//wire	mem_ahb_hwdata[13];
//wire	mem_ahb_hwdata[14];
//wire	mem_ahb_hwdata[15];
//wire	mem_ahb_hwdata[16];
//wire	mem_ahb_hwdata[17];
//wire	mem_ahb_hwdata[18];
//wire	mem_ahb_hwdata[19];
//wire	mem_ahb_hwdata[1];
//wire	mem_ahb_hwdata[20];
//wire	mem_ahb_hwdata[21];
//wire	mem_ahb_hwdata[22];
//wire	mem_ahb_hwdata[23];
//wire	mem_ahb_hwdata[24];
//wire	mem_ahb_hwdata[25];
//wire	mem_ahb_hwdata[26];
//wire	mem_ahb_hwdata[27];
//wire	mem_ahb_hwdata[28];
//wire	mem_ahb_hwdata[29];
//wire	mem_ahb_hwdata[2];
//wire	mem_ahb_hwdata[30];
//wire	mem_ahb_hwdata[31];
//wire	mem_ahb_hwdata[3];
//wire	mem_ahb_hwdata[4];
//wire	mem_ahb_hwdata[5];
//wire	mem_ahb_hwdata[6];
//wire	mem_ahb_hwdata[7];
//wire	mem_ahb_hwdata[8];
//wire	mem_ahb_hwdata[9];
wire	mem_ahb_hwrite;
wire	pll_clkfb;
wire	[31:0] slave_ahb_haddr;
//wire	slave_ahb_haddr[0];
//wire	slave_ahb_haddr[10];
//wire	slave_ahb_haddr[11];
//wire	slave_ahb_haddr[12];
//wire	slave_ahb_haddr[13];
//wire	slave_ahb_haddr[14];
//wire	slave_ahb_haddr[15];
//wire	slave_ahb_haddr[16];
//wire	slave_ahb_haddr[17];
//wire	slave_ahb_haddr[18];
//wire	slave_ahb_haddr[19];
//wire	slave_ahb_haddr[1];
//wire	slave_ahb_haddr[20];
//wire	slave_ahb_haddr[21];
//wire	slave_ahb_haddr[22];
//wire	slave_ahb_haddr[23];
//wire	slave_ahb_haddr[24];
//wire	slave_ahb_haddr[25];
//wire	slave_ahb_haddr[26];
//wire	slave_ahb_haddr[27];
//wire	slave_ahb_haddr[28];
//wire	slave_ahb_haddr[29];
//wire	slave_ahb_haddr[2];
//wire	slave_ahb_haddr[30];
//wire	slave_ahb_haddr[31];
//wire	slave_ahb_haddr[3];
//wire	slave_ahb_haddr[4];
//wire	slave_ahb_haddr[5];
//wire	slave_ahb_haddr[6];
//wire	slave_ahb_haddr[7];
//wire	slave_ahb_haddr[8];
//wire	slave_ahb_haddr[9];
wire	[2:0] slave_ahb_hburst;
//wire	slave_ahb_hburst[0];
//wire	slave_ahb_hburst[1];
//wire	slave_ahb_hburst[2];
wire	[31:0] slave_ahb_hrdata;
//wire	slave_ahb_hrdata[0];
//wire	slave_ahb_hrdata[10];
//wire	slave_ahb_hrdata[11];
//wire	slave_ahb_hrdata[12];
//wire	slave_ahb_hrdata[13];
//wire	slave_ahb_hrdata[14];
//wire	slave_ahb_hrdata[15];
//wire	slave_ahb_hrdata[16];
//wire	slave_ahb_hrdata[17];
//wire	slave_ahb_hrdata[18];
//wire	slave_ahb_hrdata[19];
//wire	slave_ahb_hrdata[1];
//wire	slave_ahb_hrdata[20];
//wire	slave_ahb_hrdata[21];
//wire	slave_ahb_hrdata[22];
//wire	slave_ahb_hrdata[23];
//wire	slave_ahb_hrdata[24];
//wire	slave_ahb_hrdata[25];
//wire	slave_ahb_hrdata[26];
//wire	slave_ahb_hrdata[27];
//wire	slave_ahb_hrdata[28];
//wire	slave_ahb_hrdata[29];
//wire	slave_ahb_hrdata[2];
//wire	slave_ahb_hrdata[30];
//wire	slave_ahb_hrdata[31];
//wire	slave_ahb_hrdata[3];
//wire	slave_ahb_hrdata[4];
//wire	slave_ahb_hrdata[5];
//wire	slave_ahb_hrdata[6];
//wire	slave_ahb_hrdata[7];
//wire	slave_ahb_hrdata[8];
//wire	slave_ahb_hrdata[9];
wire	slave_ahb_hreadyout;
wire	slave_ahb_hresp;
wire	[2:0] slave_ahb_hsize;
//wire	slave_ahb_hsize[0];
//wire	slave_ahb_hsize[1];
//wire	slave_ahb_hsize[2];
wire	[1:0] slave_ahb_htrans;
//wire	slave_ahb_htrans[0];
//wire	slave_ahb_htrans[1];
wire	[31:0] slave_ahb_hwdata;
//wire	slave_ahb_hwdata[0];
//wire	slave_ahb_hwdata[10];
//wire	slave_ahb_hwdata[11];
//wire	slave_ahb_hwdata[12];
//wire	slave_ahb_hwdata[13];
//wire	slave_ahb_hwdata[14];
//wire	slave_ahb_hwdata[15];
//wire	slave_ahb_hwdata[16];
//wire	slave_ahb_hwdata[17];
//wire	slave_ahb_hwdata[18];
//wire	slave_ahb_hwdata[19];
//wire	slave_ahb_hwdata[1];
//wire	slave_ahb_hwdata[20];
//wire	slave_ahb_hwdata[21];
//wire	slave_ahb_hwdata[22];
//wire	slave_ahb_hwdata[23];
//wire	slave_ahb_hwdata[24];
//wire	slave_ahb_hwdata[25];
//wire	slave_ahb_hwdata[26];
//wire	slave_ahb_hwdata[27];
//wire	slave_ahb_hwdata[28];
//wire	slave_ahb_hwdata[29];
//wire	slave_ahb_hwdata[2];
//wire	slave_ahb_hwdata[30];
//wire	slave_ahb_hwdata[31];
//wire	slave_ahb_hwdata[3];
//wire	slave_ahb_hwdata[4];
//wire	slave_ahb_hwdata[5];
//wire	slave_ahb_hwdata[6];
//wire	slave_ahb_hwdata[7];
//wire	slave_ahb_hwdata[8];
//wire	slave_ahb_hwdata[9];
wire	sys_clk;
wire	[1:0] sys_ctrl_clkSource;
//wire	sys_ctrl_clkSource[0];
//wire	sys_ctrl_clkSource[1];
wire	sys_ctrl_stop;
wire	sys_gck;
wire	sys_gck0;
wire	sys_resetn;

wire vcc;
wire gnd;
assign vcc = 1'b1;
assign gnd = 1'b0;

alta_rio PIN_23_iobuf(
	.padio(PIN_23),
	.datain(gpio6_io_out_data[2]),
	.oe(gpio6_io_out_en[2]),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(PIN_23_in),
	.regout());
defparam PIN_23_iobuf.coord_x = 20;
defparam PIN_23_iobuf.coord_y = 13;
defparam PIN_23_iobuf.coord_z = 1;
defparam PIN_23_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_23_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_23_iobuf.IN_POWERUP = 1'b0;
defparam PIN_23_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_23_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_23_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_23_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_23_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_23_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_23_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_23_iobuf.OE_POWERUP = 1'b0;
defparam PIN_23_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_23_iobuf.CFG_INPUT_EN = 1'b1;
defparam PIN_23_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_23_iobuf.CFG_SLR = 1'b0;
defparam PIN_23_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_23_iobuf.CFG_PDRCTRL = 4'b0100;
defparam PIN_23_iobuf.CFG_KEEP = 2'b00;
defparam PIN_23_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_23_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_23_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_23_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_23_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_23_iobuf.OUT_DELAY = 1'b0;
defparam PIN_23_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_23_iobuf.IN_REG_DELAY = 3'b000;

alta_rio PIN_24_iobuf(
	.padio(PIN_24),
	.datain(gpio6_io_out_data[4]),
	.oe(gpio6_io_out_en[4]),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(PIN_24_in),
	.regout());
defparam PIN_24_iobuf.coord_x = 20;
defparam PIN_24_iobuf.coord_y = 13;
defparam PIN_24_iobuf.coord_z = 2;
defparam PIN_24_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_24_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_24_iobuf.IN_POWERUP = 1'b0;
defparam PIN_24_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_24_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_24_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_24_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_24_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_24_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_24_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_24_iobuf.OE_POWERUP = 1'b0;
defparam PIN_24_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_24_iobuf.CFG_INPUT_EN = 1'b1;
defparam PIN_24_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_24_iobuf.CFG_SLR = 1'b0;
defparam PIN_24_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_24_iobuf.CFG_PDRCTRL = 4'b0100;
defparam PIN_24_iobuf.CFG_KEEP = 2'b00;
defparam PIN_24_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_24_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_24_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_24_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_24_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_24_iobuf.OUT_DELAY = 1'b0;
defparam PIN_24_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_24_iobuf.IN_REG_DELAY = 3'b000;

alta_rio PIN_26_iobuf(
	.padio(PIN_26),
	.datain(gpio4_io_out_data[4]),
	.oe(gpio4_io_out_en[4]),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(PIN_26_in),
	.regout());
defparam PIN_26_iobuf.coord_x = 19;
defparam PIN_26_iobuf.coord_y = 13;
defparam PIN_26_iobuf.coord_z = 3;
defparam PIN_26_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_26_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_26_iobuf.IN_POWERUP = 1'b0;
defparam PIN_26_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_26_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_26_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_26_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_26_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_26_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_26_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_26_iobuf.OE_POWERUP = 1'b0;
defparam PIN_26_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_26_iobuf.CFG_INPUT_EN = 1'b1;
defparam PIN_26_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_26_iobuf.CFG_SLR = 1'b0;
defparam PIN_26_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_26_iobuf.CFG_PDRCTRL = 4'b0100;
defparam PIN_26_iobuf.CFG_KEEP = 2'b00;
defparam PIN_26_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_26_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_26_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_26_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_26_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_26_iobuf.OUT_DELAY = 1'b0;
defparam PIN_26_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_26_iobuf.IN_REG_DELAY = 3'b000;

alta_rio PIN_29_iobuf(
	.padio(PIN_29),
	.datain(gpio6_io_out_data[5]),
	.oe(gpio6_io_out_en[5]),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(PIN_29_in),
	.regout());
defparam PIN_29_iobuf.coord_x = 19;
defparam PIN_29_iobuf.coord_y = 13;
defparam PIN_29_iobuf.coord_z = 2;
defparam PIN_29_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_29_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_29_iobuf.IN_POWERUP = 1'b0;
defparam PIN_29_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_29_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_29_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_29_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_29_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_29_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_29_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_29_iobuf.OE_POWERUP = 1'b0;
defparam PIN_29_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_29_iobuf.CFG_INPUT_EN = 1'b1;
defparam PIN_29_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_29_iobuf.CFG_SLR = 1'b0;
defparam PIN_29_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_29_iobuf.CFG_PDRCTRL = 4'b0100;
defparam PIN_29_iobuf.CFG_KEEP = 2'b00;
defparam PIN_29_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_29_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_29_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_29_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_29_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_29_iobuf.OUT_DELAY = 1'b0;
defparam PIN_29_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_29_iobuf.IN_REG_DELAY = 3'b000;

alta_rio PIN_30_iobuf(
	.padio(PIN_30),
	.datain(gpio6_io_out_data[6]),
	.oe(gpio6_io_out_en[6]),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(PIN_30_in),
	.regout());
defparam PIN_30_iobuf.coord_x = 19;
defparam PIN_30_iobuf.coord_y = 13;
defparam PIN_30_iobuf.coord_z = 1;
defparam PIN_30_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_30_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_30_iobuf.IN_POWERUP = 1'b0;
defparam PIN_30_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_30_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_30_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_30_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_30_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_30_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_30_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_30_iobuf.OE_POWERUP = 1'b0;
defparam PIN_30_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_30_iobuf.CFG_INPUT_EN = 1'b1;
defparam PIN_30_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_30_iobuf.CFG_SLR = 1'b0;
defparam PIN_30_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_30_iobuf.CFG_PDRCTRL = 4'b0100;
defparam PIN_30_iobuf.CFG_KEEP = 2'b00;
defparam PIN_30_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_30_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_30_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_30_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_30_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_30_iobuf.OUT_DELAY = 1'b0;
defparam PIN_30_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_30_iobuf.IN_REG_DELAY = 3'b000;

alta_rio PIN_46_iobuf(
	.padio(PIN_46),
	.datain(gpio4_io_out_data[5]),
	.oe(gpio4_io_out_en[5]),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(PIN_46_in),
	.regout());
defparam PIN_46_iobuf.coord_x = 15;
defparam PIN_46_iobuf.coord_y = 13;
defparam PIN_46_iobuf.coord_z = 0;
defparam PIN_46_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_46_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_46_iobuf.IN_POWERUP = 1'b0;
defparam PIN_46_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_46_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_46_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_46_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_46_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_46_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_46_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_46_iobuf.OE_POWERUP = 1'b0;
defparam PIN_46_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_46_iobuf.CFG_INPUT_EN = 1'b1;
defparam PIN_46_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_46_iobuf.CFG_SLR = 1'b0;
defparam PIN_46_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_46_iobuf.CFG_PDRCTRL = 4'b0100;
defparam PIN_46_iobuf.CFG_KEEP = 2'b00;
defparam PIN_46_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_46_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_46_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_46_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_46_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_46_iobuf.OUT_DELAY = 1'b0;
defparam PIN_46_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_46_iobuf.IN_REG_DELAY = 3'b000;

alta_rio PIN_47_iobuf(
	.padio(PIN_47),
	.datain(gpio4_io_out_data[2]),
	.oe(gpio4_io_out_en[2]),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(PIN_47_in),
	.regout());
defparam PIN_47_iobuf.coord_x = 14;
defparam PIN_47_iobuf.coord_y = 13;
defparam PIN_47_iobuf.coord_z = 2;
defparam PIN_47_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_47_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_47_iobuf.IN_POWERUP = 1'b0;
defparam PIN_47_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_47_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_47_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_47_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_47_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_47_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_47_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_47_iobuf.OE_POWERUP = 1'b0;
defparam PIN_47_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_47_iobuf.CFG_INPUT_EN = 1'b1;
defparam PIN_47_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_47_iobuf.CFG_SLR = 1'b0;
defparam PIN_47_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_47_iobuf.CFG_PDRCTRL = 4'b0100;
defparam PIN_47_iobuf.CFG_KEEP = 2'b00;
defparam PIN_47_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_47_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_47_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_47_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_47_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_47_iobuf.OUT_DELAY = 1'b0;
defparam PIN_47_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_47_iobuf.IN_REG_DELAY = 3'b000;

alta_rio PIN_48_iobuf(
	.padio(PIN_48),
	.datain(gpio4_io_out_data[3]),
	.oe(gpio4_io_out_en[3]),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(PIN_48_in),
	.regout());
defparam PIN_48_iobuf.coord_x = 14;
defparam PIN_48_iobuf.coord_y = 13;
defparam PIN_48_iobuf.coord_z = 0;
defparam PIN_48_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_48_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_48_iobuf.IN_POWERUP = 1'b0;
defparam PIN_48_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_48_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_48_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_48_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_48_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_48_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_48_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_48_iobuf.OE_POWERUP = 1'b0;
defparam PIN_48_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_48_iobuf.CFG_INPUT_EN = 1'b1;
defparam PIN_48_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_48_iobuf.CFG_SLR = 1'b0;
defparam PIN_48_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_48_iobuf.CFG_PDRCTRL = 4'b0100;
defparam PIN_48_iobuf.CFG_KEEP = 2'b00;
defparam PIN_48_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_48_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_48_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_48_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_48_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_48_iobuf.OUT_DELAY = 1'b0;
defparam PIN_48_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_48_iobuf.IN_REG_DELAY = 3'b000;

alta_rio PIN_51_iobuf(
	.padio(PIN_51),
	.datain(gpio4_io_out_data[0]),
	.oe(gpio4_io_out_en[0]),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(PIN_51_in),
	.regout());
defparam PIN_51_iobuf.coord_x = 0;
defparam PIN_51_iobuf.coord_y = 4;
defparam PIN_51_iobuf.coord_z = 0;
defparam PIN_51_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_51_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_51_iobuf.IN_POWERUP = 1'b0;
defparam PIN_51_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_51_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_51_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_51_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_51_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_51_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_51_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_51_iobuf.OE_POWERUP = 1'b0;
defparam PIN_51_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_51_iobuf.CFG_INPUT_EN = 1'b1;
defparam PIN_51_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_51_iobuf.CFG_SLR = 1'b0;
defparam PIN_51_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_51_iobuf.CFG_PDRCTRL = 4'b0100;
defparam PIN_51_iobuf.CFG_KEEP = 2'b00;
defparam PIN_51_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_51_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_51_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_51_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_51_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_51_iobuf.OUT_DELAY = 1'b0;
defparam PIN_51_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_51_iobuf.IN_REG_DELAY = 3'b000;

alta_rio PIN_52_iobuf(
	.padio(PIN_52),
	.datain(gpio4_io_out_data[1]),
	.oe(gpio4_io_out_en[1]),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(PIN_52_in),
	.regout());
defparam PIN_52_iobuf.coord_x = 0;
defparam PIN_52_iobuf.coord_y = 4;
defparam PIN_52_iobuf.coord_z = 1;
defparam PIN_52_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_52_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_52_iobuf.IN_POWERUP = 1'b0;
defparam PIN_52_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_52_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_52_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_52_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_52_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_52_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_52_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_52_iobuf.OE_POWERUP = 1'b0;
defparam PIN_52_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_52_iobuf.CFG_INPUT_EN = 1'b1;
defparam PIN_52_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_52_iobuf.CFG_SLR = 1'b0;
defparam PIN_52_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_52_iobuf.CFG_PDRCTRL = 4'b0100;
defparam PIN_52_iobuf.CFG_KEEP = 2'b00;
defparam PIN_52_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_52_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_52_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_52_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_52_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_52_iobuf.OUT_DELAY = 1'b0;
defparam PIN_52_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_52_iobuf.IN_REG_DELAY = 3'b000;

alta_rio PIN_62_iobuf(
	.padio(PIN_62),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(PIN_62_in),
	.regout());
defparam PIN_62_iobuf.coord_x = 0;
defparam PIN_62_iobuf.coord_y = 3;
defparam PIN_62_iobuf.coord_z = 5;
defparam PIN_62_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_62_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_62_iobuf.IN_POWERUP = 1'b0;
defparam PIN_62_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_62_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_62_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_62_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_62_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_62_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_62_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_62_iobuf.OE_POWERUP = 1'b0;
defparam PIN_62_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_62_iobuf.CFG_INPUT_EN = 1'b1;
defparam PIN_62_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_62_iobuf.CFG_SLR = 1'b0;
defparam PIN_62_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_62_iobuf.CFG_PDRCTRL = 4'b0100;
defparam PIN_62_iobuf.CFG_KEEP = 2'b00;
defparam PIN_62_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_62_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_62_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_62_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_62_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_62_iobuf.OUT_DELAY = 1'b0;
defparam PIN_62_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_62_iobuf.IN_REG_DELAY = 3'b000;

alta_rio PIN_68_iobuf(
	.padio(PIN_68),
	.datain(gpio7_io_out_data[6]),
	.oe(gpio7_io_out_en[6]),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam PIN_68_iobuf.coord_x = 0;
defparam PIN_68_iobuf.coord_y = 2;
defparam PIN_68_iobuf.coord_z = 5;
defparam PIN_68_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_68_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_68_iobuf.IN_POWERUP = 1'b0;
defparam PIN_68_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_68_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_68_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_68_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_68_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_68_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_68_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_68_iobuf.OE_POWERUP = 1'b0;
defparam PIN_68_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_68_iobuf.CFG_INPUT_EN = 1'b0;
defparam PIN_68_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_68_iobuf.CFG_SLR = 1'b0;
defparam PIN_68_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_68_iobuf.CFG_PDRCTRL = 4'b0100;
defparam PIN_68_iobuf.CFG_KEEP = 2'b00;
defparam PIN_68_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_68_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_68_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_68_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_68_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_68_iobuf.OUT_DELAY = 1'b0;
defparam PIN_68_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_68_iobuf.IN_REG_DELAY = 3'b000;

alta_rio PIN_69_iobuf(
	.padio(PIN_69),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(PIN_69_in),
	.regout());
defparam PIN_69_iobuf.coord_x = 0;
defparam PIN_69_iobuf.coord_y = 1;
defparam PIN_69_iobuf.coord_z = 0;
defparam PIN_69_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_69_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_69_iobuf.IN_POWERUP = 1'b0;
defparam PIN_69_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_69_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_69_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_69_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_69_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_69_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_69_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_69_iobuf.OE_POWERUP = 1'b0;
defparam PIN_69_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_69_iobuf.CFG_INPUT_EN = 1'b1;
defparam PIN_69_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_69_iobuf.CFG_SLR = 1'b0;
defparam PIN_69_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_69_iobuf.CFG_PDRCTRL = 4'b0100;
defparam PIN_69_iobuf.CFG_KEEP = 2'b00;
defparam PIN_69_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_69_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_69_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_69_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_69_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_69_iobuf.OUT_DELAY = 1'b0;
defparam PIN_69_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_69_iobuf.IN_REG_DELAY = 3'b000;

alta_rio PIN_78_iobuf(
	.padio(PIN_78),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(PIN_78_in),
	.regout());
defparam PIN_78_iobuf.coord_x = 1;
defparam PIN_78_iobuf.coord_y = 0;
defparam PIN_78_iobuf.coord_z = 2;
defparam PIN_78_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_78_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_78_iobuf.IN_POWERUP = 1'b0;
defparam PIN_78_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_78_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_78_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_78_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_78_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_78_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_78_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_78_iobuf.OE_POWERUP = 1'b0;
defparam PIN_78_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_78_iobuf.CFG_INPUT_EN = 1'b1;
defparam PIN_78_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_78_iobuf.CFG_SLR = 1'b0;
defparam PIN_78_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_78_iobuf.CFG_PDRCTRL = 4'b0100;
defparam PIN_78_iobuf.CFG_KEEP = 2'b00;
defparam PIN_78_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_78_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_78_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_78_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_78_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_78_iobuf.OUT_DELAY = 1'b0;
defparam PIN_78_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_78_iobuf.IN_REG_DELAY = 3'b000;

alta_rio PIN_HSE_iobuf(
	.padio(PIN_HSE),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(PIN_HSE_in),
	.regout());
defparam PIN_HSE_iobuf.coord_x = 22;
defparam PIN_HSE_iobuf.coord_y = 4;
defparam PIN_HSE_iobuf.coord_z = 1;
defparam PIN_HSE_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_HSE_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_HSE_iobuf.IN_POWERUP = 1'b0;
defparam PIN_HSE_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_HSE_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_HSE_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_HSE_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_HSE_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_HSE_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_HSE_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_HSE_iobuf.OE_POWERUP = 1'b0;
defparam PIN_HSE_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_HSE_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_HSE_iobuf.CFG_SLR = 1'b0;
defparam PIN_HSE_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_HSE_iobuf.CFG_PDRCTRL = 4'b0010;
defparam PIN_HSE_iobuf.CFG_KEEP = 2'b00;
defparam PIN_HSE_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_HSE_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_HSE_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_HSE_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_HSE_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_HSE_iobuf.OUT_DELAY = 1'b0;
defparam PIN_HSE_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_HSE_iobuf.IN_REG_DELAY = 3'b000;

alta_rio PIN_HSI_iobuf(
	.padio(PIN_HSI),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(PIN_HSI_in),
	.regout());
defparam PIN_HSI_iobuf.coord_x = 22;
defparam PIN_HSI_iobuf.coord_y = 4;
defparam PIN_HSI_iobuf.coord_z = 0;
defparam PIN_HSI_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_HSI_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_HSI_iobuf.IN_POWERUP = 1'b0;
defparam PIN_HSI_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_HSI_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_HSI_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_HSI_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_HSI_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_HSI_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_HSI_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_HSI_iobuf.OE_POWERUP = 1'b0;
defparam PIN_HSI_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_HSI_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_HSI_iobuf.CFG_SLR = 1'b0;
defparam PIN_HSI_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_HSI_iobuf.CFG_PDRCTRL = 4'b0010;
defparam PIN_HSI_iobuf.CFG_KEEP = 2'b00;
defparam PIN_HSI_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_HSI_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_HSI_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_HSI_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_HSI_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_HSI_iobuf.OUT_DELAY = 1'b0;
defparam PIN_HSI_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_HSI_iobuf.IN_REG_DELAY = 3'b000;

alta_rio PIN_OSC_iobuf(
	.padio(PIN_OSC),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(gnd),
	.inclk(gnd),
	.inclkena(gnd),
	.areset(gnd),
	.sreset(gnd),
	.combout(PIN_OSC_in),
	.regout());
defparam PIN_OSC_iobuf.coord_x = 22;
defparam PIN_OSC_iobuf.coord_y = 4;
defparam PIN_OSC_iobuf.coord_z = 2;
defparam PIN_OSC_iobuf.IN_ASYNC_MODE = 1'b0;
defparam PIN_OSC_iobuf.IN_SYNC_MODE = 1'b0;
defparam PIN_OSC_iobuf.IN_POWERUP = 1'b0;
defparam PIN_OSC_iobuf.OUT_REG_MODE = 1'b0;
defparam PIN_OSC_iobuf.OUT_ASYNC_MODE = 1'b0;
defparam PIN_OSC_iobuf.OUT_SYNC_MODE = 1'b0;
defparam PIN_OSC_iobuf.OUT_POWERUP = 1'b0;
defparam PIN_OSC_iobuf.OE_REG_MODE = 1'b0;
defparam PIN_OSC_iobuf.OE_ASYNC_MODE = 1'b0;
defparam PIN_OSC_iobuf.OE_SYNC_MODE = 1'b0;
defparam PIN_OSC_iobuf.OE_POWERUP = 1'b0;
defparam PIN_OSC_iobuf.CFG_TRI_INPUT = 1'b0;
defparam PIN_OSC_iobuf.CFG_PULL_UP = 1'b0;
defparam PIN_OSC_iobuf.CFG_SLR = 1'b0;
defparam PIN_OSC_iobuf.CFG_OPEN_DRAIN = 1'b0;
defparam PIN_OSC_iobuf.CFG_PDRCTRL = 4'b0010;
defparam PIN_OSC_iobuf.CFG_KEEP = 2'b00;
defparam PIN_OSC_iobuf.CFG_LVDS_OUT_EN = 1'b0;
defparam PIN_OSC_iobuf.CFG_LVDS_SEL_CUA = 2'b00;
defparam PIN_OSC_iobuf.CFG_LVDS_IREF = 10'b0110000000;
defparam PIN_OSC_iobuf.CFG_LVDS_IN_EN = 1'b0;
defparam PIN_OSC_iobuf.DPCLK_DELAY = 4'b0000;
defparam PIN_OSC_iobuf.OUT_DELAY = 1'b0;
defparam PIN_OSC_iobuf.IN_DATA_DELAY = 3'b000;
defparam PIN_OSC_iobuf.IN_REG_DELAY = 3'b000;

alta_io_gclk gclksw_gclk(
	.inclk(sys_gck0),
	.outclk(sys_gck));
defparam gclksw_gclk.coord_x = 22;
defparam gclksw_gclk.coord_y = 4;
defparam gclksw_gclk.coord_z = 5;

alta_gclkgen gclksw_gen(
	.clkin(sys_clk),
	.ena(vcc),
	.clkout(sys_gck0));
defparam gclksw_gen.coord_x = 22;
defparam gclksw_gen.coord_y = 4;
defparam gclksw_gen.coord_z = 5;
defparam gclksw_gen.ENA_REG_MODE = 1'b0;

alta_gclksw gclksw_inst(
	.resetn(sys_resetn),
	.clkin0(PIN_HSI_in),
	.clkin1(PIN_HSE_in),
	.clkin2(PLL_CLKOUT[0]),
	.clkin3(),
	.select({sys_ctrl_clkSource[1], sys_ctrl_clkSource[0]}),
	.clkout(sys_clk));
defparam gclksw_inst.coord_x = 22;
defparam gclksw_inst.coord_y = 4;
defparam gclksw_inst.coord_z = 0;

alta_pllve pll_inst(
	.clkin(PIN_HSE_in),
	.clkfb(pll_clkfb),
	.pfden(vcc),
	.resetn(PLL_ENABLE),
	.phasecounterselect({gnd, gnd, gnd}),
	.phaseupdown(gnd),
	.phasestep(gnd),
	.scanclk(gnd),
	.scanclkena(gnd),
	.scandata(gnd),
	.configupdate(gnd),
	.scandataout(),
	.scandone(),
	.phasedone(),
	.clkout0(PLL_CLKOUT[0]),
	.clkout1(\PLL_CLKOUT[1]_int ),
	.clkout2(PLL_CLKOUT[2]),
	.clkout3(PLL_CLKOUT[3]),
	.clkout4(PLL_CLKOUT[4]),
	.clkfbout(pll_clkfb),
	.lock(PLL_LOCK));
defparam pll_inst.coord_x = 22;
defparam pll_inst.coord_y = 5;
defparam pll_inst.coord_z = 0;
defparam pll_inst.CLKIN_HIGH = 8'b00000000;
defparam pll_inst.CLKIN_LOW = 8'b00000000;
defparam pll_inst.CLKIN_TRIM = 1'b0;
defparam pll_inst.CLKIN_BYPASS = 1'b0;
defparam pll_inst.CLKFB_HIGH = 8'b00100100;
defparam pll_inst.CLKFB_LOW = 8'b00100101;
defparam pll_inst.CLKFB_TRIM = 1'b1;
defparam pll_inst.CLKFB_BYPASS = 1'b0;
defparam pll_inst.CLKDIV0_EN = 1'b1;
defparam pll_inst.CLKDIV1_EN = 1'b1;
defparam pll_inst.CLKDIV2_EN = 1'b0;
defparam pll_inst.CLKDIV3_EN = 1'b0;
defparam pll_inst.CLKDIV4_EN = 1'b0;
defparam pll_inst.CLKOUT0_HIGH = 8'b00000000;
defparam pll_inst.CLKOUT0_LOW = 8'b00000001;
defparam pll_inst.CLKOUT0_TRIM = 1'b1;
defparam pll_inst.CLKOUT0_BYPASS = 1'b0;
defparam pll_inst.CLKOUT1_HIGH = 8'b00000001;
defparam pll_inst.CLKOUT1_LOW = 8'b00000010;
defparam pll_inst.CLKOUT1_TRIM = 1'b1;
defparam pll_inst.CLKOUT1_BYPASS = 1'b0;
defparam pll_inst.CLKOUT2_HIGH = 8'b11111111;
defparam pll_inst.CLKOUT2_LOW = 8'b11111111;
defparam pll_inst.CLKOUT2_TRIM = 1'b0;
defparam pll_inst.CLKOUT2_BYPASS = 1'b0;
defparam pll_inst.CLKOUT3_HIGH = 8'b11111111;
defparam pll_inst.CLKOUT3_LOW = 8'b11111111;
defparam pll_inst.CLKOUT3_TRIM = 1'b0;
defparam pll_inst.CLKOUT3_BYPASS = 1'b0;
defparam pll_inst.CLKOUT4_HIGH = 8'b11111111;
defparam pll_inst.CLKOUT4_LOW = 8'b11111111;
defparam pll_inst.CLKOUT4_TRIM = 1'b0;
defparam pll_inst.CLKOUT4_BYPASS = 1'b0;
defparam pll_inst.CLKOUT0_DEL = 8'b00000000;
defparam pll_inst.CLKOUT1_DEL = 8'b00000000;
defparam pll_inst.CLKOUT2_DEL = 8'b00000000;
defparam pll_inst.CLKOUT3_DEL = 8'b00000000;
defparam pll_inst.CLKOUT4_DEL = 8'b00000000;
defparam pll_inst.CLKOUT0_PHASE = 3'b000;
defparam pll_inst.CLKOUT1_PHASE = 3'b000;
defparam pll_inst.CLKOUT2_PHASE = 3'b000;
defparam pll_inst.CLKOUT3_PHASE = 3'b000;
defparam pll_inst.CLKOUT4_PHASE = 3'b000;
defparam pll_inst.CLKFB_DEL = 8'b00000000;
defparam pll_inst.CLKFB_PHASE = 3'b000;
defparam pll_inst.FEEDBACK_MODE = 3'b100;
defparam pll_inst.FBDELAY_VAL = 3'b100;
defparam pll_inst.PLLOUTP_EN = 1'b0;
defparam pll_inst.PLLOUTN_EN = 1'b0;
defparam pll_inst.CLKOUT1_CASCADE = 1'b0;
defparam pll_inst.CLKOUT2_CASCADE = 1'b0;
defparam pll_inst.CLKOUT3_CASCADE = 1'b0;
defparam pll_inst.CLKOUT4_CASCADE = 1'b0;
defparam pll_inst.VCO_POST_DIV = 1'b1;
defparam pll_inst.REG_CTRL = 2'b00;
defparam pll_inst.CP = 3'b100;
defparam pll_inst.RREF = 2'b01;
defparam pll_inst.RVI = 2'b01;
defparam pll_inst.IVCO = 3'b010;
defparam pll_inst.PLL_EN_FLAG = 1'b1;

alta_io_gclk \pll_inst|clkout1~ALTA_GCLK (
	.inclk(\PLL_CLKOUT[1]_int ),
	.outclk(PLL_CLKOUT[1]));
defparam \pll_inst|clkout1~ALTA_GCLK .coord_x = 22;
defparam \pll_inst|clkout1~ALTA_GCLK .coord_y = 4;
defparam \pll_inst|clkout1~ALTA_GCLK .coord_z = 1;

alta_rv32 rv32(
	.sys_clk(sys_clk),
	.mem_ahb_hready(mem_ahb_hready),
	.mem_ahb_hreadyout(vcc),
	.mem_ahb_htrans({mem_ahb_htrans[1], mem_ahb_htrans[0]}),
	.mem_ahb_hsize({mem_ahb_hsize[2], mem_ahb_hsize[1], mem_ahb_hsize[0]}),
	.mem_ahb_hburst({mem_ahb_hburst[2], mem_ahb_hburst[1], mem_ahb_hburst[0]}),
	.mem_ahb_hwrite(mem_ahb_hwrite),
	.mem_ahb_haddr({mem_ahb_haddr[31], mem_ahb_haddr[30], mem_ahb_haddr[29], mem_ahb_haddr[28], mem_ahb_haddr[27], mem_ahb_haddr[26], mem_ahb_haddr[25], mem_ahb_haddr[24], mem_ahb_haddr[23], mem_ahb_haddr[22], mem_ahb_haddr[21], mem_ahb_haddr[20], mem_ahb_haddr[19], mem_ahb_haddr[18], mem_ahb_haddr[17], mem_ahb_haddr[16], mem_ahb_haddr[15], mem_ahb_haddr[14], mem_ahb_haddr[13], mem_ahb_haddr[12], mem_ahb_haddr[11], mem_ahb_haddr[10], mem_ahb_haddr[9], mem_ahb_haddr[8], mem_ahb_haddr[7], mem_ahb_haddr[6], mem_ahb_haddr[5], mem_ahb_haddr[4], mem_ahb_haddr[3], mem_ahb_haddr[2], mem_ahb_haddr[1], mem_ahb_haddr[0]}),
	.mem_ahb_hwdata({mem_ahb_hwdata[31], mem_ahb_hwdata[30], mem_ahb_hwdata[29], mem_ahb_hwdata[28], mem_ahb_hwdata[27], mem_ahb_hwdata[26], mem_ahb_hwdata[25], mem_ahb_hwdata[24], mem_ahb_hwdata[23], mem_ahb_hwdata[22], mem_ahb_hwdata[21], mem_ahb_hwdata[20], mem_ahb_hwdata[19], mem_ahb_hwdata[18], mem_ahb_hwdata[17], mem_ahb_hwdata[16], mem_ahb_hwdata[15], mem_ahb_hwdata[14], mem_ahb_hwdata[13], mem_ahb_hwdata[12], mem_ahb_hwdata[11], mem_ahb_hwdata[10], mem_ahb_hwdata[9], mem_ahb_hwdata[8], mem_ahb_hwdata[7], mem_ahb_hwdata[6], mem_ahb_hwdata[5], mem_ahb_hwdata[4], mem_ahb_hwdata[3], mem_ahb_hwdata[2], mem_ahb_hwdata[1], mem_ahb_hwdata[0]}),
	.mem_ahb_hresp(gnd),
	.mem_ahb_hrdata({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.slave_ahb_hsel(gnd),
	.slave_ahb_hready(vcc),
	.slave_ahb_hreadyout(slave_ahb_hreadyout),
	.slave_ahb_htrans({gnd, gnd}),
	.slave_ahb_hsize({gnd, gnd, gnd}),
	.slave_ahb_hburst({gnd, gnd, gnd}),
	.slave_ahb_hwrite(gnd),
	.slave_ahb_haddr({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.slave_ahb_hwdata({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.slave_ahb_hresp(slave_ahb_hresp),
	.slave_ahb_hrdata({slave_ahb_hrdata[31], slave_ahb_hrdata[30], slave_ahb_hrdata[29], slave_ahb_hrdata[28], slave_ahb_hrdata[27], slave_ahb_hrdata[26], slave_ahb_hrdata[25], slave_ahb_hrdata[24], slave_ahb_hrdata[23], slave_ahb_hrdata[22], slave_ahb_hrdata[21], slave_ahb_hrdata[20], slave_ahb_hrdata[19], slave_ahb_hrdata[18], slave_ahb_hrdata[17], slave_ahb_hrdata[16], slave_ahb_hrdata[15], slave_ahb_hrdata[14], slave_ahb_hrdata[13], slave_ahb_hrdata[12], slave_ahb_hrdata[11], slave_ahb_hrdata[10], slave_ahb_hrdata[9], slave_ahb_hrdata[8], slave_ahb_hrdata[7], slave_ahb_hrdata[6], slave_ahb_hrdata[5], slave_ahb_hrdata[4], slave_ahb_hrdata[3], slave_ahb_hrdata[2], slave_ahb_hrdata[1], slave_ahb_hrdata[0]}),
	.gpio0_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio0_io_out_data({gpio0_io_out_data[7], gpio0_io_out_data[6], gpio0_io_out_data[5], gpio0_io_out_data[4], gpio0_io_out_data[3], gpio0_io_out_data[2], gpio0_io_out_data[1], gpio0_io_out_data[0]}),
	.gpio0_io_out_en({gpio0_io_out_en[7], gpio0_io_out_en[6], gpio0_io_out_en[5], gpio0_io_out_en[4], gpio0_io_out_en[3], gpio0_io_out_en[2], gpio0_io_out_en[1], gpio0_io_out_en[0]}),
	.gpio1_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio1_io_out_data({gpio1_io_out_data[7], gpio1_io_out_data[6], gpio1_io_out_data[5], gpio1_io_out_data[4], gpio1_io_out_data[3], gpio1_io_out_data[2], gpio1_io_out_data[1], gpio1_io_out_data[0]}),
	.gpio1_io_out_en({gpio1_io_out_en[7], gpio1_io_out_en[6], gpio1_io_out_en[5], gpio1_io_out_en[4], gpio1_io_out_en[3], gpio1_io_out_en[2], gpio1_io_out_en[1], gpio1_io_out_en[0]}),
	.sys_ctrl_clkSource({sys_ctrl_clkSource[1], sys_ctrl_clkSource[0]}),
	.sys_ctrl_hseEnable(),
	.sys_ctrl_hseBypass(),
	.sys_ctrl_pllEnable(PLL_ENABLE),
	.sys_ctrl_pllReady(PLL_LOCK),
	.sys_ctrl_sleep(),
	.sys_ctrl_stop(sys_ctrl_stop),
	.sys_ctrl_standby(),
	.gpio2_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio2_io_out_data({gpio2_io_out_data[7], gpio2_io_out_data[6], gpio2_io_out_data[5], gpio2_io_out_data[4], gpio2_io_out_data[3], gpio2_io_out_data[2], gpio2_io_out_data[1], gpio2_io_out_data[0]}),
	.gpio2_io_out_en({gpio2_io_out_en[7], gpio2_io_out_en[6], gpio2_io_out_en[5], gpio2_io_out_en[4], gpio2_io_out_en[3], gpio2_io_out_en[2], gpio2_io_out_en[1], gpio2_io_out_en[0]}),
	.gpio3_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio3_io_out_data({gpio3_io_out_data[7], gpio3_io_out_data[6], gpio3_io_out_data[5], gpio3_io_out_data[4], gpio3_io_out_data[3], gpio3_io_out_data[2], gpio3_io_out_data[1], gpio3_io_out_data[0]}),
	.gpio3_io_out_en({gpio3_io_out_en[7], gpio3_io_out_en[6], gpio3_io_out_en[5], gpio3_io_out_en[4], gpio3_io_out_en[3], gpio3_io_out_en[2], gpio3_io_out_en[1], gpio3_io_out_en[0]}),
	.gpio4_io_in({gnd, gnd, PIN_46_in, PIN_26_in, PIN_48_in, PIN_47_in, PIN_52_in, PIN_51_in}),
	.gpio4_io_out_data({gpio4_io_out_data[7], gpio4_io_out_data[6], gpio4_io_out_data[5], gpio4_io_out_data[4], gpio4_io_out_data[3], gpio4_io_out_data[2], gpio4_io_out_data[1], gpio4_io_out_data[0]}),
	.gpio4_io_out_en({gpio4_io_out_en[7], gpio4_io_out_en[6], gpio4_io_out_en[5], gpio4_io_out_en[4], gpio4_io_out_en[3], gpio4_io_out_en[2], gpio4_io_out_en[1], gpio4_io_out_en[0]}),
	.gpio5_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio5_io_out_data({gpio5_io_out_data[7], gpio5_io_out_data[6], gpio5_io_out_data[5], gpio5_io_out_data[4], gpio5_io_out_data[3], gpio5_io_out_data[2], gpio5_io_out_data[1], gpio5_io_out_data[0]}),
	.gpio5_io_out_en({gpio5_io_out_en[7], gpio5_io_out_en[6], gpio5_io_out_en[5], gpio5_io_out_en[4], gpio5_io_out_en[3], gpio5_io_out_en[2], gpio5_io_out_en[1], gpio5_io_out_en[0]}),
	.gpio6_io_in({gnd, PIN_30_in, PIN_29_in, PIN_24_in, gnd, PIN_23_in, PIN_69_in, gnd}),
	.gpio6_io_out_data({gpio6_io_out_data[7], gpio6_io_out_data[6], gpio6_io_out_data[5], gpio6_io_out_data[4], gpio6_io_out_data[3], gpio6_io_out_data[2], gpio6_io_out_data[1], gpio6_io_out_data[0]}),
	.gpio6_io_out_en({gpio6_io_out_en[7], gpio6_io_out_en[6], gpio6_io_out_en[5], gpio6_io_out_en[4], gpio6_io_out_en[3], gpio6_io_out_en[2], gpio6_io_out_en[1], gpio6_io_out_en[0]}),
	.gpio7_io_in({gnd, gnd, gnd, PIN_62_in, gnd, gnd, gnd, gnd}),
	.gpio7_io_out_data({gpio7_io_out_data[7], gpio7_io_out_data[6], gpio7_io_out_data[5], gpio7_io_out_data[4], gpio7_io_out_data[3], gpio7_io_out_data[2], gpio7_io_out_data[1], gpio7_io_out_data[0]}),
	.gpio7_io_out_en({gpio7_io_out_en[7], gpio7_io_out_en[6], gpio7_io_out_en[5], gpio7_io_out_en[4], gpio7_io_out_en[3], gpio7_io_out_en[2], gpio7_io_out_en[1], gpio7_io_out_en[0]}),
	.gpio8_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio8_io_out_data({gpio8_io_out_data[7], gpio8_io_out_data[6], gpio8_io_out_data[5], gpio8_io_out_data[4], gpio8_io_out_data[3], gpio8_io_out_data[2], gpio8_io_out_data[1], gpio8_io_out_data[0]}),
	.gpio8_io_out_en({gpio8_io_out_en[7], gpio8_io_out_en[6], gpio8_io_out_en[5], gpio8_io_out_en[4], gpio8_io_out_en[3], gpio8_io_out_en[2], gpio8_io_out_en[1], gpio8_io_out_en[0]}),
	.gpio9_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio9_io_out_data({gpio9_io_out_data[7], gpio9_io_out_data[6], gpio9_io_out_data[5], gpio9_io_out_data[4], gpio9_io_out_data[3], gpio9_io_out_data[2], gpio9_io_out_data[1], gpio9_io_out_data[0]}),
	.gpio9_io_out_en({gpio9_io_out_en[7], gpio9_io_out_en[6], gpio9_io_out_en[5], gpio9_io_out_en[4], gpio9_io_out_en[3], gpio9_io_out_en[2], gpio9_io_out_en[1], gpio9_io_out_en[0]}),
	.ext_resetn(vcc),
	.resetn_out(sys_resetn),
	.dmactive(),
	.swj_JTAGNSW(),
	.swj_JTAGSTATE(),
	.swj_JTAGIR(),
	.ext_int({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.ext_dma_DMACBREQ({gnd, gnd, gnd, gnd}),
	.ext_dma_DMACLBREQ({gnd, gnd, gnd, gnd}),
	.ext_dma_DMACSREQ({gnd, gnd, gnd, gnd}),
	.ext_dma_DMACLSREQ({gnd, gnd, gnd, gnd}),
	.ext_dma_DMACCLR({ext_dma_DMACCLR[3], ext_dma_DMACCLR[2], ext_dma_DMACCLR[1], ext_dma_DMACCLR[0]}),
	.ext_dma_DMACTC({ext_dma_DMACTC[3], ext_dma_DMACTC[2], ext_dma_DMACTC[1], ext_dma_DMACTC[0]}),
	.local_int({gnd, gnd, gnd, gnd}),
	.test_mode({gnd, gnd}),
	.usb0_xcvr_clk(PLL_CLKOUT[1]),
	.usb0_id(PIN_78_in));
defparam rv32.coord_x = 0;
defparam rv32.coord_y = 5;
defparam rv32.coord_z = 0;

endmodule
