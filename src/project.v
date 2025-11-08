module tt_um_julke_gussinatorn2
  (input  [7:0] ui_in,
   input  [7:0] uio_in,
   input  ena,
   input  clk,
   input  rst_n,
   output [7:0] uo_out,
   output [7:0] uio_out,
   output [7:0] uio_oe);
  reg [255:0] rom_mrse;
  reg [1:0] ascell_mrse;
  reg [1:0] cell_mrse;
  reg [5:0] ui_in_old;
  reg [5:0] ui_in_sync;
  reg [7:0] sr_mrse;
  reg [7:0] rom_i_mrse;
  reg [2:0] i_sr_mrse;
  reg flush_sr_mrse;
  reg [4:0] i_rom_mrse;
  reg [12:0] time_mrse;
  reg [2:0] state_mrse;
  localparam [7:0] n15_o = 8'b00000000;
  localparam [7:0] n16_o = 8'b00000000;
  wire [5:0] n17_o;
  wire [5:0] n18_o;
  wire [5:0] n19_o;
  wire n24_o;
  wire n25_o;
  wire n26_o;
  wire n27_o;
  wire n28_o;
  wire [1:0] n29_o;
  wire [1:0] n31_o;
  wire [5:0] n36_o;
  wire n38_o;
  wire n39_o;
  wire n41_o;
  wire n43_o;
  wire [31:0] n46_o;
  wire [31:0] n48_o;
  wire [4:0] n49_o;
  wire n50_o;
  wire n51_o;
  wire n52_o;
  wire n53_o;
  wire [5:0] n54_o;
  wire [7:0] n55_o;
  wire [2:0] n57_o;
  wire [7:0] n58_o;
  wire [2:0] n59_o;
  wire [255:0] n60_o;
  wire [7:0] n62_o;
  wire [2:0] n64_o;
  wire n66_o;
  wire [4:0] n67_o;
  wire n68_o;
  wire [7:0] n69_o;
  wire [2:0] n70_o;
  wire n72_o;
  wire n73_o;
  wire n74_o;
  wire n75_o;
  wire [2:0] n77_o;
  wire [4:0] n79_o;
  wire [2:0] n81_o;
  wire [2:0] n83_o;
  wire [4:0] n85_o;
  wire [2:0] n87_o;
  wire [2:0] n89_o;
  wire [4:0] n91_o;
  wire [2:0] n93_o;
  wire n95_o;
  wire [31:0] n96_o;
  wire n98_o;
  wire [2:0] n100_o;
  wire [4:0] n102_o;
  wire [2:0] n105_o;
  wire n107_o;
  wire [31:0] n108_o;
  wire [31:0] n110_o;
  wire [4:0] n111_o;
  wire [2:0] n113_o;
  wire [4:0] n114_o;
  wire [1:0] n115_o;
  wire n117_o;
  wire [1:0] n118_o;
  wire n120_o;
  wire [1:0] n121_o;
  wire n123_o;
  wire [1:0] n124_o;
  wire n126_o;
  wire [3:0] n127_o;
  reg [1:0] n128_o;
  wire n130_o;
  wire [31:0] n131_o;
  wire n133_o;
  wire [31:0] n134_o;
  wire [31:0] n136_o;
  wire [12:0] n137_o;
  wire [31:0] n138_o;
  wire n140_o;
  wire [31:0] n141_o;
  wire [31:0] n143_o;
  wire [12:0] n144_o;
  wire [2:0] n146_o;
  wire [7:0] n148_o;
  wire [2:0] n149_o;
  wire [12:0] n150_o;
  wire [2:0] n152_o;
  wire [7:0] n154_o;
  wire [2:0] n155_o;
  wire [12:0] n156_o;
  wire [2:0] n157_o;
  wire n159_o;
  wire n161_o;
  wire [2:0] n163_o;
  wire [2:0] n164_o;
  wire n166_o;
  wire n168_o;
  wire [2:0] n170_o;
  wire [2:0] n171_o;
  wire n173_o;
  wire n175_o;
  wire n177_o;
  wire [3:0] n178_o;
  reg [7:0] n179_o;
  reg [2:0] n180_o;
  reg [12:0] n183_o;
  reg [2:0] n188_o;
  wire n190_o;
  wire [31:0] n191_o;
  wire n193_o;
  wire n194_o;
  wire [7:0] n196_o;
  wire [31:0] n198_o;
  wire [31:0] n200_o;
  wire [4:0] n201_o;
  wire [255:0] n202_o;
  wire [7:0] n203_o;
  wire [4:0] n204_o;
  wire n205_o;
  wire [7:0] n206_o;
  wire [4:0] n208_o;
  wire [2:0] n210_o;
  wire n212_o;
  wire [31:0] n213_o;
  wire n215_o;
  wire n216_o;
  wire [7:0] n218_o;
  wire [31:0] n220_o;
  wire [31:0] n222_o;
  wire [4:0] n223_o;
  wire [255:0] n224_o;
  wire [7:0] n225_o;
  wire [4:0] n226_o;
  wire n227_o;
  wire [7:0] n228_o;
  wire [4:0] n230_o;
  wire [2:0] n232_o;
  wire n233_o;
  wire n234_o;
  wire [4:0] n235_o;
  wire [2:0] n236_o;
  wire [255:0] n237_o;
  wire [7:0] n238_o;
  wire [4:0] n239_o;
  wire [2:0] n240_o;
  wire [255:0] n241_o;
  wire [7:0] n242_o;
  wire [2:0] n243_o;
  wire [4:0] n244_o;
  wire [12:0] n245_o;
  wire [2:0] n246_o;
  wire [7:0] n247_o;
  wire [255:0] n248_o;
  wire [7:0] n249_o;
  wire [2:0] n250_o;
  wire [4:0] n251_o;
  wire [12:0] n252_o;
  wire [2:0] n253_o;
  wire [7:0] n254_o;
  wire [255:0] n255_o;
  wire [7:0] n257_o;
  wire [2:0] n258_o;
  wire [4:0] n259_o;
  wire [12:0] n260_o;
  wire [2:0] n261_o;
  reg [255:0] n287_q;
  wire n288_o;
  wire n289_o;
  wire [1:0] n290_o;
  reg [1:0] n291_q;
  wire n292_o;
  wire [5:0] n293_o;
  reg [5:0] n294_q;
  wire n295_o;
  wire [7:0] n296_o;
  reg [7:0] n297_q;
  reg [2:0] n298_q;
  wire n299_o;
  wire n300_o;
  wire n301_o;
  reg n302_q;
  reg [4:0] n303_q;
  wire n304_o;
  wire [12:0] n305_o;
  reg [12:0] n306_q;
  wire n307_o;
  wire [2:0] n308_o;
  reg [2:0] n309_q;
  reg [7:0] n310_q;
  wire [7:0] n311_o;
  wire [7:0] n312_o;
  wire [7:0] n313_o;
  wire [7:0] n314_o;
  wire [7:0] n315_o;
  wire [7:0] n316_o;
  wire [7:0] n317_o;
  wire [7:0] n318_o;
  wire [7:0] n319_o;
  wire [7:0] n320_o;
  wire [7:0] n321_o;
  wire [7:0] n322_o;
  wire [7:0] n323_o;
  wire [7:0] n324_o;
  wire [7:0] n325_o;
  wire [7:0] n326_o;
  wire [7:0] n327_o;
  wire [7:0] n328_o;
  wire [7:0] n329_o;
  wire [7:0] n330_o;
  wire [7:0] n331_o;
  wire [7:0] n332_o;
  wire [7:0] n333_o;
  wire [7:0] n334_o;
  wire [7:0] n335_o;
  wire [7:0] n336_o;
  wire [7:0] n337_o;
  wire [7:0] n338_o;
  wire [7:0] n339_o;
  wire [7:0] n340_o;
  wire [7:0] n341_o;
  wire [7:0] n342_o;
  wire [1:0] n343_o;
  reg [7:0] n344_o;
  wire [1:0] n345_o;
  reg [7:0] n346_o;
  wire [1:0] n347_o;
  reg [7:0] n348_o;
  wire [1:0] n349_o;
  reg [7:0] n350_o;
  wire [1:0] n351_o;
  reg [7:0] n352_o;
  wire [1:0] n353_o;
  reg [7:0] n354_o;
  wire [1:0] n355_o;
  reg [7:0] n356_o;
  wire [1:0] n357_o;
  reg [7:0] n358_o;
  wire [1:0] n359_o;
  reg [7:0] n360_o;
  wire [1:0] n361_o;
  reg [7:0] n362_o;
  wire n363_o;
  wire [7:0] n364_o;
  wire n365_o;
  wire n366_o;
  wire n367_o;
  wire n368_o;
  wire n369_o;
  wire n370_o;
  wire n371_o;
  wire n372_o;
  wire n373_o;
  wire n374_o;
  wire n375_o;
  wire n376_o;
  wire n377_o;
  wire n378_o;
  wire n379_o;
  wire n380_o;
  wire n381_o;
  wire n382_o;
  wire n383_o;
  wire n384_o;
  wire n385_o;
  wire n386_o;
  wire n387_o;
  wire n388_o;
  wire n389_o;
  wire n390_o;
  wire n391_o;
  wire n392_o;
  wire n393_o;
  wire n394_o;
  wire n395_o;
  wire n396_o;
  wire n397_o;
  wire n398_o;
  wire n399_o;
  wire n400_o;
  wire n401_o;
  wire n402_o;
  wire n403_o;
  wire n404_o;
  wire n405_o;
  wire n406_o;
  wire n407_o;
  wire n408_o;
  wire n409_o;
  wire n410_o;
  wire n411_o;
  wire n412_o;
  wire n413_o;
  wire n414_o;
  wire n415_o;
  wire n416_o;
  wire n417_o;
  wire n418_o;
  wire n419_o;
  wire n420_o;
  wire n421_o;
  wire n422_o;
  wire n423_o;
  wire n424_o;
  wire n425_o;
  wire n426_o;
  wire n427_o;
  wire n428_o;
  wire n429_o;
  wire n430_o;
  wire n431_o;
  wire n432_o;
  wire n433_o;
  wire n434_o;
  wire [7:0] n435_o;
  wire [7:0] n436_o;
  wire [7:0] n437_o;
  wire [7:0] n438_o;
  wire [7:0] n439_o;
  wire [7:0] n440_o;
  wire [7:0] n441_o;
  wire [7:0] n442_o;
  wire [7:0] n443_o;
  wire [7:0] n444_o;
  wire [7:0] n445_o;
  wire [7:0] n446_o;
  wire [7:0] n447_o;
  wire [7:0] n448_o;
  wire [7:0] n449_o;
  wire [7:0] n450_o;
  wire [7:0] n451_o;
  wire [7:0] n452_o;
  wire [7:0] n453_o;
  wire [7:0] n454_o;
  wire [7:0] n455_o;
  wire [7:0] n456_o;
  wire [7:0] n457_o;
  wire [7:0] n458_o;
  wire [7:0] n459_o;
  wire [7:0] n460_o;
  wire [7:0] n461_o;
  wire [7:0] n462_o;
  wire [7:0] n463_o;
  wire [7:0] n464_o;
  wire [7:0] n465_o;
  wire [7:0] n466_o;
  wire [7:0] n467_o;
  wire [7:0] n468_o;
  wire [7:0] n469_o;
  wire [7:0] n470_o;
  wire [7:0] n471_o;
  wire [7:0] n472_o;
  wire [7:0] n473_o;
  wire [7:0] n474_o;
  wire [7:0] n475_o;
  wire [7:0] n476_o;
  wire [7:0] n477_o;
  wire [7:0] n478_o;
  wire [7:0] n479_o;
  wire [7:0] n480_o;
  wire [7:0] n481_o;
  wire [7:0] n482_o;
  wire [7:0] n483_o;
  wire [7:0] n484_o;
  wire [7:0] n485_o;
  wire [7:0] n486_o;
  wire [7:0] n487_o;
  wire [7:0] n488_o;
  wire [7:0] n489_o;
  wire [7:0] n490_o;
  wire [7:0] n491_o;
  wire [7:0] n492_o;
  wire [7:0] n493_o;
  wire [7:0] n494_o;
  wire [7:0] n495_o;
  wire [7:0] n496_o;
  wire [7:0] n497_o;
  wire [7:0] n498_o;
  wire [255:0] n499_o;
  wire n500_o;
  wire n501_o;
  wire n502_o;
  wire n503_o;
  wire n504_o;
  wire n505_o;
  wire n506_o;
  wire n507_o;
  wire n508_o;
  wire n509_o;
  wire n510_o;
  wire n511_o;
  wire n512_o;
  wire n513_o;
  wire n514_o;
  wire n515_o;
  wire n516_o;
  wire n517_o;
  wire n518_o;
  wire n519_o;
  wire n520_o;
  wire n521_o;
  wire n522_o;
  wire n523_o;
  wire n524_o;
  wire n525_o;
  wire n526_o;
  wire n527_o;
  wire n528_o;
  wire n529_o;
  wire n530_o;
  wire n531_o;
  wire n532_o;
  wire n533_o;
  wire n534_o;
  wire n535_o;
  wire n536_o;
  wire n537_o;
  wire n538_o;
  wire n539_o;
  wire n540_o;
  wire n541_o;
  wire n542_o;
  wire n543_o;
  wire n544_o;
  wire n545_o;
  wire n546_o;
  wire n547_o;
  wire n548_o;
  wire n549_o;
  wire n550_o;
  wire n551_o;
  wire n552_o;
  wire n553_o;
  wire n554_o;
  wire n555_o;
  wire n556_o;
  wire n557_o;
  wire n558_o;
  wire n559_o;
  wire n560_o;
  wire n561_o;
  wire n562_o;
  wire n563_o;
  wire n564_o;
  wire n565_o;
  wire n566_o;
  wire n567_o;
  wire n568_o;
  wire n569_o;
  wire [7:0] n570_o;
  wire [7:0] n571_o;
  wire [7:0] n572_o;
  wire [7:0] n573_o;
  wire [7:0] n574_o;
  wire [7:0] n575_o;
  wire [7:0] n576_o;
  wire [7:0] n577_o;
  wire [7:0] n578_o;
  wire [7:0] n579_o;
  wire [7:0] n580_o;
  wire [7:0] n581_o;
  wire [7:0] n582_o;
  wire [7:0] n583_o;
  wire [7:0] n584_o;
  wire [7:0] n585_o;
  wire [7:0] n586_o;
  wire [7:0] n587_o;
  wire [7:0] n588_o;
  wire [7:0] n589_o;
  wire [7:0] n590_o;
  wire [7:0] n591_o;
  wire [7:0] n592_o;
  wire [7:0] n593_o;
  wire [7:0] n594_o;
  wire [7:0] n595_o;
  wire [7:0] n596_o;
  wire [7:0] n597_o;
  wire [7:0] n598_o;
  wire [7:0] n599_o;
  wire [7:0] n600_o;
  wire [7:0] n601_o;
  wire [7:0] n602_o;
  wire [7:0] n603_o;
  wire [7:0] n604_o;
  wire [7:0] n605_o;
  wire [7:0] n606_o;
  wire [7:0] n607_o;
  wire [7:0] n608_o;
  wire [7:0] n609_o;
  wire [7:0] n610_o;
  wire [7:0] n611_o;
  wire [7:0] n612_o;
  wire [7:0] n613_o;
  wire [7:0] n614_o;
  wire [7:0] n615_o;
  wire [7:0] n616_o;
  wire [7:0] n617_o;
  wire [7:0] n618_o;
  wire [7:0] n619_o;
  wire [7:0] n620_o;
  wire [7:0] n621_o;
  wire [7:0] n622_o;
  wire [7:0] n623_o;
  wire [7:0] n624_o;
  wire [7:0] n625_o;
  wire [7:0] n626_o;
  wire [7:0] n627_o;
  wire [7:0] n628_o;
  wire [7:0] n629_o;
  wire [7:0] n630_o;
  wire [7:0] n631_o;
  wire [7:0] n632_o;
  wire [7:0] n633_o;
  wire [255:0] n634_o;
  wire n635_o;
  wire n636_o;
  wire n637_o;
  wire n638_o;
  wire n639_o;
  wire n640_o;
  wire n641_o;
  wire n642_o;
  wire n643_o;
  wire n644_o;
  wire n645_o;
  wire n646_o;
  wire n647_o;
  wire n648_o;
  wire n649_o;
  wire n650_o;
  wire n651_o;
  wire n652_o;
  wire n653_o;
  wire n654_o;
  wire n655_o;
  wire n656_o;
  wire n657_o;
  wire n658_o;
  wire n659_o;
  wire n660_o;
  wire n661_o;
  wire n662_o;
  wire n663_o;
  wire n664_o;
  wire n665_o;
  wire n666_o;
  wire n667_o;
  wire n668_o;
  wire n669_o;
  wire n670_o;
  wire n671_o;
  wire n672_o;
  wire n673_o;
  wire n674_o;
  wire n675_o;
  wire n676_o;
  wire n677_o;
  wire n678_o;
  wire n679_o;
  wire n680_o;
  wire n681_o;
  wire n682_o;
  wire n683_o;
  wire n684_o;
  wire n685_o;
  wire n686_o;
  wire n687_o;
  wire n688_o;
  wire n689_o;
  wire n690_o;
  wire n691_o;
  wire n692_o;
  wire n693_o;
  wire n694_o;
  wire n695_o;
  wire n696_o;
  wire n697_o;
  wire n698_o;
  wire n699_o;
  wire n700_o;
  wire n701_o;
  wire n702_o;
  wire n703_o;
  wire n704_o;
  wire [7:0] n705_o;
  wire [7:0] n706_o;
  wire [7:0] n707_o;
  wire [7:0] n708_o;
  wire [7:0] n709_o;
  wire [7:0] n710_o;
  wire [7:0] n711_o;
  wire [7:0] n712_o;
  wire [7:0] n713_o;
  wire [7:0] n714_o;
  wire [7:0] n715_o;
  wire [7:0] n716_o;
  wire [7:0] n717_o;
  wire [7:0] n718_o;
  wire [7:0] n719_o;
  wire [7:0] n720_o;
  wire [7:0] n721_o;
  wire [7:0] n722_o;
  wire [7:0] n723_o;
  wire [7:0] n724_o;
  wire [7:0] n725_o;
  wire [7:0] n726_o;
  wire [7:0] n727_o;
  wire [7:0] n728_o;
  wire [7:0] n729_o;
  wire [7:0] n730_o;
  wire [7:0] n731_o;
  wire [7:0] n732_o;
  wire [7:0] n733_o;
  wire [7:0] n734_o;
  wire [7:0] n735_o;
  wire [7:0] n736_o;
  wire [7:0] n737_o;
  wire [7:0] n738_o;
  wire [7:0] n739_o;
  wire [7:0] n740_o;
  wire [7:0] n741_o;
  wire [7:0] n742_o;
  wire [7:0] n743_o;
  wire [7:0] n744_o;
  wire [7:0] n745_o;
  wire [7:0] n746_o;
  wire [7:0] n747_o;
  wire [7:0] n748_o;
  wire [7:0] n749_o;
  wire [7:0] n750_o;
  wire [7:0] n751_o;
  wire [7:0] n752_o;
  wire [7:0] n753_o;
  wire [7:0] n754_o;
  wire [7:0] n755_o;
  wire [7:0] n756_o;
  wire [7:0] n757_o;
  wire [7:0] n758_o;
  wire [7:0] n759_o;
  wire [7:0] n760_o;
  wire [7:0] n761_o;
  wire [7:0] n762_o;
  wire [7:0] n763_o;
  wire [7:0] n764_o;
  wire [7:0] n765_o;
  wire [7:0] n766_o;
  wire [7:0] n767_o;
  wire [7:0] n768_o;
  wire [255:0] n769_o;
  assign uo_out = n310_q; //(module output)
  assign uio_out = n15_o; //(module output)
  assign uio_oe = n16_o; //(module output)
  /* project.vhdl:21:12  */
  always @*
    rom_mrse = n287_q; // (isignal)
  initial
    rom_mrse = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* project.vhdl:64:12  */
  always @*
    ascell_mrse = n31_o; // (isignal)
  initial
    ascell_mrse = 2'b00;
  /* project.vhdl:65:12  */
  always @*
    cell_mrse = n291_q; // (isignal)
  initial
    cell_mrse = 2'b00;
  /* project.vhdl:66:12  */
  always @*
    ui_in_old = n294_q; // (isignal)
  initial
    ui_in_old = 6'b000000;
  /* project.vhdl:67:12  */
  always @*
    ui_in_sync = n19_o; // (isignal)
  initial
    ui_in_sync = 6'b000000;
  /* project.vhdl:68:12  */
  always @*
    sr_mrse = n297_q; // (isignal)
  initial
    sr_mrse = 8'b00000000;
  /* project.vhdl:69:12  */
  always @*
    rom_i_mrse = n364_o; // (isignal)
  initial
    rom_i_mrse = 8'b00000000;
  /* project.vhdl:70:12  */
  always @*
    i_sr_mrse = n298_q; // (isignal)
  initial
    i_sr_mrse = 3'b000;
  /* project.vhdl:71:12  */
  always @*
    flush_sr_mrse = n302_q; // (isignal)
  initial
    flush_sr_mrse = 1'b0;
  /* project.vhdl:72:12  */
  always @*
    i_rom_mrse = n303_q; // (isignal)
  initial
    i_rom_mrse = 5'b00000;
  /* project.vhdl:74:12  */
  always @*
    time_mrse = n306_q; // (isignal)
  initial
    time_mrse = 13'b0000000000000;
  /* project.vhdl:75:12  */
  always @*
    state_mrse = n309_q; // (isignal)
  initial
    state_mrse = 3'b000;
  /* project.vhdl:81:28  */
  assign n17_o = ui_in[5:0]; // extract
  /* project.vhdl:81:45  */
  assign n18_o = ~ui_in_old;
  /* project.vhdl:81:41  */
  assign n19_o = n17_o & n18_o;
  /* project.vhdl:87:28  */
  assign n24_o = ui_in_sync[0]; // extract
  /* project.vhdl:87:53  */
  assign n25_o = ui_in_sync[1]; // extract
  /* project.vhdl:87:39  */
  assign n26_o = n24_o | n25_o;
  /* project.vhdl:87:70  */
  assign n27_o = ~flush_sr_mrse;
  /* project.vhdl:87:65  */
  assign n28_o = n27_o & n26_o;
  /* project.vhdl:88:42  */
  assign n29_o = ui_in_sync[1:0]; // extract
  /* project.vhdl:87:13  */
  assign n31_o = n28_o ? n29_o : 2'b00;
  /* project.vhdl:140:35  */
  assign n36_o = ui_in[5:0]; // extract
  /* project.vhdl:142:31  */
  assign n38_o = state_mrse == 3'b000;
  /* project.vhdl:143:35  */
  assign n39_o = ui_in_sync[2]; // extract
  /* project.vhdl:143:21  */
  assign n41_o = n39_o ? 1'b1 : flush_sr_mrse;
  /* project.vhdl:147:35  */
  assign n43_o = i_sr_mrse == 3'b100;
  /* project.vhdl:152:50  */
  assign n46_o = {27'b0, i_rom_mrse};  //  uext
  /* project.vhdl:152:50  */
  assign n48_o = n46_o + 32'b00000000000000000000000000000001;
  /* project.vhdl:152:39  */
  assign n49_o = n48_o[4:0];  // trunc
  /* project.vhdl:157:64  */
  assign n50_o = ui_in_sync[0]; // extract
  /* project.vhdl:157:50  */
  assign n51_o = flush_sr_mrse | n50_o;
  /* project.vhdl:157:89  */
  assign n52_o = ui_in_sync[1]; // extract
  /* project.vhdl:157:75  */
  assign n53_o = n51_o | n52_o;
  /* project.vhdl:158:47  */
  assign n54_o = sr_mrse[5:0]; // extract
  /* project.vhdl:158:60  */
  assign n55_o = {n54_o, ascell_mrse};
  /* project.vhdl:160:52  */
  assign n57_o = i_sr_mrse + 3'b001;
  /* project.vhdl:157:21  */
  assign n58_o = n53_o ? n55_o : sr_mrse;
  /* project.vhdl:157:21  */
  assign n59_o = n53_o ? n57_o : i_sr_mrse;
  /* project.vhdl:142:17  */
  assign n60_o = n68_o ? n499_o : rom_mrse;
  /* project.vhdl:147:21  */
  assign n62_o = n43_o ? 8'b00000000 : n58_o;
  /* project.vhdl:147:21  */
  assign n64_o = n43_o ? 3'b000 : n59_o;
  /* project.vhdl:147:21  */
  assign n66_o = n43_o ? 1'b0 : n41_o;
  /* project.vhdl:142:17  */
  assign n67_o = n72_o ? n49_o : i_rom_mrse;
  /* project.vhdl:142:17  */
  assign n68_o = n43_o & n38_o;
  /* project.vhdl:142:17  */
  assign n69_o = n38_o ? n62_o : sr_mrse;
  /* project.vhdl:142:17  */
  assign n70_o = n38_o ? n64_o : i_sr_mrse;
  /* project.vhdl:142:17  */
  assign n72_o = n43_o & n38_o;
  /* project.vhdl:167:30  */
  assign n73_o = ui_in_sync[3]; // extract
  /* project.vhdl:171:33  */
  assign n74_o = ui_in_sync[4]; // extract
  /* project.vhdl:175:33  */
  assign n75_o = ui_in_sync[5]; // extract
  /* project.vhdl:175:17  */
  assign n77_o = n75_o ? 3'b000 : n70_o;
  /* project.vhdl:175:17  */
  assign n79_o = n75_o ? 5'b00000 : n67_o;
  /* project.vhdl:175:17  */
  assign n81_o = n75_o ? 3'b110 : state_mrse;
  /* project.vhdl:171:17  */
  assign n83_o = n74_o ? 3'b000 : n77_o;
  /* project.vhdl:171:17  */
  assign n85_o = n74_o ? 5'b00000 : n79_o;
  /* project.vhdl:171:17  */
  assign n87_o = n74_o ? 3'b101 : n81_o;
  /* project.vhdl:167:17  */
  assign n89_o = n73_o ? 3'b000 : n83_o;
  /* project.vhdl:167:17  */
  assign n91_o = n73_o ? 5'b00000 : n85_o;
  /* project.vhdl:167:17  */
  assign n93_o = n73_o ? 3'b001 : n87_o;
  /* project.vhdl:181:31  */
  assign n95_o = state_mrse == 3'b001;
  /* project.vhdl:182:35  */
  assign n96_o = {27'b0, i_rom_mrse};  //  uext
  /* project.vhdl:182:35  */
  assign n98_o = n96_o == 32'b00000000000000000000000000011111;
  /* project.vhdl:182:21  */
  assign n100_o = n98_o ? 3'b000 : n89_o;
  /* project.vhdl:182:21  */
  assign n102_o = n98_o ? 5'b00000 : n91_o;
  /* project.vhdl:182:21  */
  assign n105_o = n98_o ? 3'b000 : 3'b011;
  /* project.vhdl:190:34  */
  assign n107_o = i_sr_mrse == 3'b011;
  /* project.vhdl:192:50  */
  assign n108_o = {27'b0, i_rom_mrse};  //  uext
  /* project.vhdl:192:50  */
  assign n110_o = n108_o + 32'b00000000000000000000000000000001;
  /* project.vhdl:192:39  */
  assign n111_o = n110_o[4:0];  // trunc
  /* project.vhdl:190:21  */
  assign n113_o = n107_o ? 3'b000 : n100_o;
  /* project.vhdl:190:21  */
  assign n114_o = n107_o ? n111_o : n102_o;
  /* project.vhdl:199:49  */
  assign n115_o = sr_mrse[7:6]; // extract
  /* project.vhdl:198:25  */
  assign n117_o = i_sr_mrse == 3'b000;
  /* project.vhdl:201:49  */
  assign n118_o = sr_mrse[5:4]; // extract
  /* project.vhdl:200:25  */
  assign n120_o = i_sr_mrse == 3'b001;
  /* project.vhdl:203:49  */
  assign n121_o = sr_mrse[3:2]; // extract
  /* project.vhdl:202:25  */
  assign n123_o = i_sr_mrse == 3'b010;
  /* project.vhdl:205:49  */
  assign n124_o = sr_mrse[1:0]; // extract
  /* project.vhdl:204:25  */
  assign n126_o = i_sr_mrse == 3'b011;
  assign n127_o = {n126_o, n123_o, n120_o, n117_o};
  /* project.vhdl:197:21  */
  always @*
    case (n127_o)
      4'b1000: n128_o = n124_o;
      4'b0100: n128_o = n121_o;
      4'b0010: n128_o = n118_o;
      4'b0001: n128_o = n115_o;
      default: n128_o = cell_mrse;
    endcase
  /* project.vhdl:210:34  */
  assign n130_o = state_mrse == 3'b010;
  /* project.vhdl:211:34  */
  assign n131_o = {19'b0, time_mrse};  //  uext
  /* project.vhdl:211:34  */
  assign n133_o = $signed(n131_o) > $signed(32'b00000000000000000000001111101000);
  /* project.vhdl:212:48  */
  assign n134_o = {19'b0, time_mrse};  //  uext
  /* project.vhdl:212:48  */
  assign n136_o = n134_o - 32'b00000000000000000000000000000001;
  /* project.vhdl:212:38  */
  assign n137_o = n136_o[12:0];  // trunc
  /* project.vhdl:214:37  */
  assign n138_o = {19'b0, time_mrse};  //  uext
  /* project.vhdl:214:37  */
  assign n140_o = $signed(n138_o) > $signed(32'b00000000000000000000000000000001);
  /* project.vhdl:216:48  */
  assign n141_o = {19'b0, time_mrse};  //  uext
  /* project.vhdl:216:48  */
  assign n143_o = n141_o - 32'b00000000000000000000000000000001;
  /* project.vhdl:216:38  */
  assign n144_o = n143_o[12:0];  // trunc
  /* project.vhdl:218:48  */
  assign n146_o = i_sr_mrse + 3'b001;
  /* project.vhdl:214:21  */
  assign n148_o = n140_o ? 8'b00000000 : n310_q;
  /* project.vhdl:214:21  */
  assign n149_o = n140_o ? n89_o : n146_o;
  /* project.vhdl:214:21  */
  assign n150_o = n140_o ? n144_o : time_mrse;
  /* project.vhdl:214:21  */
  assign n152_o = n140_o ? n93_o : 3'b001;
  /* project.vhdl:211:21  */
  assign n154_o = n133_o ? 8'b00000001 : n148_o;
  /* project.vhdl:211:21  */
  assign n155_o = n133_o ? n89_o : n149_o;
  /* project.vhdl:211:21  */
  assign n156_o = n133_o ? n137_o : n150_o;
  /* project.vhdl:211:21  */
  assign n157_o = n133_o ? n93_o : n152_o;
  /* project.vhdl:221:34  */
  assign n159_o = state_mrse == 3'b011;
  /* project.vhdl:226:40  */
  assign n161_o = sr_mrse == 8'b00000000;
  /* project.vhdl:227:56  */
  assign n163_o = i_sr_mrse + 3'b001;
  /* project.vhdl:226:29  */
  assign n164_o = n161_o ? n163_o : n89_o;
  /* project.vhdl:223:25  */
  assign n166_o = cell_mrse == 2'b00;
  /* project.vhdl:233:40  */
  assign n168_o = sr_mrse == 8'b11111111;
  /* project.vhdl:234:56  */
  assign n170_o = i_sr_mrse + 3'b001;
  /* project.vhdl:233:29  */
  assign n171_o = n168_o ? n170_o : n89_o;
  /* project.vhdl:230:25  */
  assign n173_o = cell_mrse == 2'b11;
  /* project.vhdl:237:25  */
  assign n175_o = cell_mrse == 2'b01;
  /* project.vhdl:240:25  */
  assign n177_o = cell_mrse == 2'b10;
  assign n178_o = {n177_o, n175_o, n173_o, n166_o};
  /* project.vhdl:222:21  */
  always @*
    case (n178_o)
      4'b1000: n179_o = n69_o;
      4'b0100: n179_o = n69_o;
      4'b0010: n179_o = rom_i_mrse;
      4'b0001: n179_o = rom_i_mrse;
      default: n179_o = n69_o;
    endcase
  /* project.vhdl:222:21  */
  always @*
    case (n178_o)
      4'b1000: n180_o = n89_o;
      4'b0100: n180_o = n89_o;
      4'b0010: n180_o = n171_o;
      4'b0001: n180_o = n164_o;
      default: n180_o = n89_o;
    endcase
  /* project.vhdl:222:21  */
  always @*
    case (n178_o)
      4'b1000: n183_o = 13'b1011101110000;
      4'b0100: n183_o = 13'b0101110111000;
      4'b0010: n183_o = time_mrse;
      4'b0001: n183_o = time_mrse;
      default: n183_o = time_mrse;
    endcase
  /* project.vhdl:222:21  */
  always @*
    case (n178_o)
      4'b1000: n188_o = 3'b010;
      4'b0100: n188_o = 3'b010;
      4'b0010: n188_o = 3'b001;
      4'b0001: n188_o = 3'b001;
      default: n188_o = n93_o;
    endcase
  /* project.vhdl:247:34  */
  assign n190_o = state_mrse == 3'b101;
  /* project.vhdl:248:35  */
  assign n191_o = {27'b0, i_rom_mrse};  //  uext
  /* project.vhdl:248:35  */
  assign n193_o = $signed(n191_o) < $signed(32'b00000000000000000000000000011111);
  /* project.vhdl:249:36  */
  assign n194_o = sr_mrse == rom_i_mrse;
  /* project.vhdl:250:53  */
  assign n196_o = ~sr_mrse;
  /* project.vhdl:251:54  */
  assign n198_o = {27'b0, i_rom_mrse};  //  uext
  /* project.vhdl:251:54  */
  assign n200_o = n198_o + 32'b00000000000000000000000000000001;
  /* project.vhdl:251:43  */
  assign n201_o = n200_o[4:0];  // trunc
  /* project.vhdl:248:21  */
  assign n202_o = n205_o ? n634_o : n60_o;
  /* project.vhdl:249:25  */
  assign n203_o = n194_o ? n69_o : rom_i_mrse;
  /* project.vhdl:249:25  */
  assign n204_o = n194_o ? n201_o : n91_o;
  /* project.vhdl:248:21  */
  assign n205_o = n194_o & n193_o;
  /* project.vhdl:248:21  */
  assign n206_o = n193_o ? n203_o : n69_o;
  /* project.vhdl:248:21  */
  assign n208_o = n193_o ? n204_o : 5'b00000;
  /* project.vhdl:248:21  */
  assign n210_o = n193_o ? n93_o : 3'b000;
  /* project.vhdl:260:34  */
  assign n212_o = state_mrse == 3'b110;
  /* project.vhdl:261:35  */
  assign n213_o = {27'b0, i_rom_mrse};  //  uext
  /* project.vhdl:261:35  */
  assign n215_o = $signed(n213_o) < $signed(32'b00000000000000000000000000011111);
  /* project.vhdl:262:36  */
  assign n216_o = sr_mrse == rom_i_mrse;
  /* project.vhdl:263:53  */
  assign n218_o = ~sr_mrse;
  /* project.vhdl:264:54  */
  assign n220_o = {27'b0, i_rom_mrse};  //  uext
  /* project.vhdl:264:54  */
  assign n222_o = n220_o + 32'b00000000000000000000000000000001;
  /* project.vhdl:264:43  */
  assign n223_o = n222_o[4:0];  // trunc
  /* project.vhdl:260:17  */
  assign n224_o = n233_o ? n769_o : n60_o;
  /* project.vhdl:262:25  */
  assign n225_o = n216_o ? n69_o : rom_i_mrse;
  /* project.vhdl:262:25  */
  assign n226_o = n216_o ? n223_o : n91_o;
  /* project.vhdl:261:21  */
  assign n227_o = n216_o & n215_o;
  /* project.vhdl:260:17  */
  assign n228_o = n234_o ? n225_o : n69_o;
  /* project.vhdl:261:21  */
  assign n230_o = n215_o ? n226_o : 5'b00000;
  /* project.vhdl:261:21  */
  assign n232_o = n215_o ? n93_o : 3'b000;
  /* project.vhdl:260:17  */
  assign n233_o = n227_o & n212_o;
  /* project.vhdl:260:17  */
  assign n234_o = n215_o & n212_o;
  /* project.vhdl:260:17  */
  assign n235_o = n212_o ? n230_o : n91_o;
  /* project.vhdl:260:17  */
  assign n236_o = n212_o ? n232_o : n93_o;
  /* project.vhdl:247:17  */
  assign n237_o = n190_o ? n202_o : n224_o;
  /* project.vhdl:247:17  */
  assign n238_o = n190_o ? n206_o : n228_o;
  /* project.vhdl:247:17  */
  assign n239_o = n190_o ? n208_o : n235_o;
  /* project.vhdl:247:17  */
  assign n240_o = n190_o ? n210_o : n236_o;
  /* project.vhdl:221:17  */
  assign n241_o = n159_o ? n60_o : n237_o;
  /* project.vhdl:221:17  */
  assign n242_o = n159_o ? n179_o : n238_o;
  /* project.vhdl:221:17  */
  assign n243_o = n159_o ? n180_o : n89_o;
  /* project.vhdl:221:17  */
  assign n244_o = n159_o ? n91_o : n239_o;
  /* project.vhdl:221:17  */
  assign n245_o = n159_o ? n183_o : time_mrse;
  /* project.vhdl:221:17  */
  assign n246_o = n159_o ? n188_o : n240_o;
  /* project.vhdl:210:17  */
  assign n247_o = n130_o ? n154_o : n310_q;
  /* project.vhdl:210:17  */
  assign n248_o = n130_o ? n60_o : n241_o;
  /* project.vhdl:210:17  */
  assign n249_o = n130_o ? n69_o : n242_o;
  /* project.vhdl:210:17  */
  assign n250_o = n130_o ? n155_o : n243_o;
  /* project.vhdl:210:17  */
  assign n251_o = n130_o ? n91_o : n244_o;
  /* project.vhdl:210:17  */
  assign n252_o = n130_o ? n156_o : n245_o;
  /* project.vhdl:210:17  */
  assign n253_o = n130_o ? n157_o : n246_o;
  /* project.vhdl:181:17  */
  assign n254_o = n95_o ? n310_q : n247_o;
  /* project.vhdl:181:17  */
  assign n255_o = n95_o ? n60_o : n248_o;
  /* project.vhdl:181:17  */
  assign n257_o = n95_o ? rom_i_mrse : n249_o;
  /* project.vhdl:181:17  */
  assign n258_o = n95_o ? n113_o : n250_o;
  /* project.vhdl:181:17  */
  assign n259_o = n95_o ? n114_o : n251_o;
  /* project.vhdl:181:17  */
  assign n260_o = n95_o ? time_mrse : n252_o;
  /* project.vhdl:181:17  */
  assign n261_o = n95_o ? n105_o : n253_o;
  /* project.vhdl:138:13  */
  always @(posedge clk or posedge rst_n)
    if (rst_n)
      n287_q <= 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    else
      n287_q <= n255_o;
  /* project.vhdl:95:9  */
  assign n288_o = ~rst_n;
  /* project.vhdl:95:9  */
  assign n289_o = n95_o & n288_o;
  /* project.vhdl:138:13  */
  assign n290_o = n289_o ? n128_o : cell_mrse;
  /* project.vhdl:138:13  */
  always @(posedge clk)
    n291_q <= n290_o;
  initial
    n291_q = 2'b00;
  /* project.vhdl:95:9  */
  assign n292_o = ~rst_n;
  /* project.vhdl:138:13  */
  assign n293_o = n292_o ? n36_o : ui_in_old;
  /* project.vhdl:138:13  */
  always @(posedge clk)
    n294_q <= n293_o;
  initial
    n294_q = 6'b000000;
  /* project.vhdl:95:9  */
  assign n295_o = ~rst_n;
  /* project.vhdl:138:13  */
  assign n296_o = n295_o ? n257_o : sr_mrse;
  /* project.vhdl:138:13  */
  always @(posedge clk)
    n297_q <= n296_o;
  initial
    n297_q = 8'b00000000;
  /* project.vhdl:138:13  */
  always @(posedge clk or posedge rst_n)
    if (rst_n)
      n298_q <= 3'b000;
    else
      n298_q <= n258_o;
  /* project.vhdl:95:9  */
  assign n299_o = ~rst_n;
  /* project.vhdl:95:9  */
  assign n300_o = n38_o & n299_o;
  /* project.vhdl:138:13  */
  assign n301_o = n300_o ? n66_o : flush_sr_mrse;
  /* project.vhdl:138:13  */
  always @(posedge clk)
    n302_q <= n301_o;
  initial
    n302_q = 1'b0;
  /* project.vhdl:138:13  */
  always @(posedge clk or posedge rst_n)
    if (rst_n)
      n303_q <= 5'b00000;
    else
      n303_q <= n259_o;
  /* project.vhdl:95:9  */
  assign n304_o = ~rst_n;
  /* project.vhdl:138:13  */
  assign n305_o = n304_o ? n260_o : time_mrse;
  /* project.vhdl:138:13  */
  always @(posedge clk)
    n306_q <= n305_o;
  initial
    n306_q = 13'b0000000000000;
  /* project.vhdl:95:9  */
  assign n307_o = ~rst_n;
  /* project.vhdl:138:13  */
  assign n308_o = n307_o ? n261_o : state_mrse;
  /* project.vhdl:138:13  */
  always @(posedge clk)
    n309_q <= n308_o;
  initial
    n309_q = 3'b000;
  /* project.vhdl:138:13  */
  always @(posedge clk or posedge rst_n)
    if (rst_n)
      n310_q <= 8'b00000000;
    else
      n310_q <= n254_o;
  /* project.vhdl:11:9  */
  assign n311_o = rom_mrse[7:0]; // extract
  /* project.vhdl:10:9  */
  assign n312_o = rom_mrse[15:8]; // extract
  /* project.vhdl:8:9  */
  assign n313_o = rom_mrse[23:16]; // extract
  assign n314_o = rom_mrse[31:24]; // extract
  /* project.vhdl:138:13  */
  assign n315_o = rom_mrse[39:32]; // extract
  /* project.vhdl:138:13  */
  assign n316_o = rom_mrse[47:40]; // extract
  /* project.vhdl:95:9  */
  assign n317_o = rom_mrse[55:48]; // extract
  assign n318_o = rom_mrse[63:56]; // extract
  /* project.vhdl:85:9  */
  assign n319_o = rom_mrse[71:64]; // extract
  /* project.vhdl:98:13  */
  assign n320_o = rom_mrse[79:72]; // extract
  /* project.vhdl:98:13  */
  assign n321_o = rom_mrse[87:80]; // extract
  assign n322_o = rom_mrse[95:88]; // extract
  assign n323_o = rom_mrse[103:96]; // extract
  assign n324_o = rom_mrse[111:104]; // extract
  assign n325_o = rom_mrse[119:112]; // extract
  assign n326_o = rom_mrse[127:120]; // extract
  assign n327_o = rom_mrse[135:128]; // extract
  assign n328_o = rom_mrse[143:136]; // extract
  assign n329_o = rom_mrse[151:144]; // extract
  assign n330_o = rom_mrse[159:152]; // extract
  assign n331_o = rom_mrse[167:160]; // extract
  assign n332_o = rom_mrse[175:168]; // extract
  assign n333_o = rom_mrse[183:176]; // extract
  assign n334_o = rom_mrse[191:184]; // extract
  assign n335_o = rom_mrse[199:192]; // extract
  assign n336_o = rom_mrse[207:200]; // extract
  assign n337_o = rom_mrse[215:208]; // extract
  assign n338_o = rom_mrse[223:216]; // extract
  assign n339_o = rom_mrse[231:224]; // extract
  assign n340_o = rom_mrse[239:232]; // extract
  assign n341_o = rom_mrse[247:240]; // extract
  assign n342_o = rom_mrse[255:248]; // extract
  /* project.vhdl:83:31  */
  assign n343_o = i_rom_mrse[1:0]; // extract
  /* project.vhdl:83:31  */
  always @*
    case (n343_o)
      2'b00: n344_o = n311_o;
      2'b01: n344_o = n312_o;
      2'b10: n344_o = n313_o;
      2'b11: n344_o = n314_o;
    endcase
  /* project.vhdl:83:31  */
  assign n345_o = i_rom_mrse[1:0]; // extract
  /* project.vhdl:83:31  */
  always @*
    case (n345_o)
      2'b00: n346_o = n315_o;
      2'b01: n346_o = n316_o;
      2'b10: n346_o = n317_o;
      2'b11: n346_o = n318_o;
    endcase
  /* project.vhdl:83:31  */
  assign n347_o = i_rom_mrse[1:0]; // extract
  /* project.vhdl:83:31  */
  always @*
    case (n347_o)
      2'b00: n348_o = n319_o;
      2'b01: n348_o = n320_o;
      2'b10: n348_o = n321_o;
      2'b11: n348_o = n322_o;
    endcase
  /* project.vhdl:83:31  */
  assign n349_o = i_rom_mrse[1:0]; // extract
  /* project.vhdl:83:31  */
  always @*
    case (n349_o)
      2'b00: n350_o = n323_o;
      2'b01: n350_o = n324_o;
      2'b10: n350_o = n325_o;
      2'b11: n350_o = n326_o;
    endcase
  /* project.vhdl:83:31  */
  assign n351_o = i_rom_mrse[1:0]; // extract
  /* project.vhdl:83:31  */
  always @*
    case (n351_o)
      2'b00: n352_o = n327_o;
      2'b01: n352_o = n328_o;
      2'b10: n352_o = n329_o;
      2'b11: n352_o = n330_o;
    endcase
  /* project.vhdl:83:31  */
  assign n353_o = i_rom_mrse[1:0]; // extract
  /* project.vhdl:83:31  */
  always @*
    case (n353_o)
      2'b00: n354_o = n331_o;
      2'b01: n354_o = n332_o;
      2'b10: n354_o = n333_o;
      2'b11: n354_o = n334_o;
    endcase
  /* project.vhdl:83:31  */
  assign n355_o = i_rom_mrse[1:0]; // extract
  /* project.vhdl:83:31  */
  always @*
    case (n355_o)
      2'b00: n356_o = n335_o;
      2'b01: n356_o = n336_o;
      2'b10: n356_o = n337_o;
      2'b11: n356_o = n338_o;
    endcase
  /* project.vhdl:83:31  */
  assign n357_o = i_rom_mrse[1:0]; // extract
  /* project.vhdl:83:31  */
  always @*
    case (n357_o)
      2'b00: n358_o = n339_o;
      2'b01: n358_o = n340_o;
      2'b10: n358_o = n341_o;
      2'b11: n358_o = n342_o;
    endcase
  /* project.vhdl:83:31  */
  assign n359_o = i_rom_mrse[3:2]; // extract
  /* project.vhdl:83:31  */
  always @*
    case (n359_o)
      2'b00: n360_o = n344_o;
      2'b01: n360_o = n346_o;
      2'b10: n360_o = n348_o;
      2'b11: n360_o = n350_o;
    endcase
  /* project.vhdl:83:31  */
  assign n361_o = i_rom_mrse[3:2]; // extract
  /* project.vhdl:83:31  */
  always @*
    case (n361_o)
      2'b00: n362_o = n352_o;
      2'b01: n362_o = n354_o;
      2'b10: n362_o = n356_o;
      2'b11: n362_o = n358_o;
    endcase
  /* project.vhdl:83:31  */
  assign n363_o = i_rom_mrse[4]; // extract
  /* project.vhdl:83:31  */
  assign n364_o = n363_o ? n362_o : n360_o;
  /* project.vhdl:151:25  */
  assign n365_o = i_rom_mrse[4]; // extract
  /* project.vhdl:151:25  */
  assign n366_o = ~n365_o;
  /* project.vhdl:151:25  */
  assign n367_o = i_rom_mrse[3]; // extract
  /* project.vhdl:151:25  */
  assign n368_o = ~n367_o;
  /* project.vhdl:151:25  */
  assign n369_o = n366_o & n368_o;
  /* project.vhdl:151:25  */
  assign n370_o = n366_o & n367_o;
  /* project.vhdl:151:25  */
  assign n371_o = n365_o & n368_o;
  /* project.vhdl:151:25  */
  assign n372_o = n365_o & n367_o;
  /* project.vhdl:151:25  */
  assign n373_o = i_rom_mrse[2]; // extract
  /* project.vhdl:151:25  */
  assign n374_o = ~n373_o;
  /* project.vhdl:151:25  */
  assign n375_o = n369_o & n374_o;
  /* project.vhdl:151:25  */
  assign n376_o = n369_o & n373_o;
  /* project.vhdl:151:25  */
  assign n377_o = n370_o & n374_o;
  /* project.vhdl:151:25  */
  assign n378_o = n370_o & n373_o;
  /* project.vhdl:151:25  */
  assign n379_o = n371_o & n374_o;
  /* project.vhdl:151:25  */
  assign n380_o = n371_o & n373_o;
  /* project.vhdl:151:25  */
  assign n381_o = n372_o & n374_o;
  /* project.vhdl:151:25  */
  assign n382_o = n372_o & n373_o;
  /* project.vhdl:151:25  */
  assign n383_o = i_rom_mrse[1]; // extract
  /* project.vhdl:151:25  */
  assign n384_o = ~n383_o;
  /* project.vhdl:151:25  */
  assign n385_o = n375_o & n384_o;
  /* project.vhdl:151:25  */
  assign n386_o = n375_o & n383_o;
  /* project.vhdl:151:25  */
  assign n387_o = n376_o & n384_o;
  /* project.vhdl:151:25  */
  assign n388_o = n376_o & n383_o;
  /* project.vhdl:151:25  */
  assign n389_o = n377_o & n384_o;
  /* project.vhdl:151:25  */
  assign n390_o = n377_o & n383_o;
  /* project.vhdl:151:25  */
  assign n391_o = n378_o & n384_o;
  /* project.vhdl:151:25  */
  assign n392_o = n378_o & n383_o;
  /* project.vhdl:151:25  */
  assign n393_o = n379_o & n384_o;
  /* project.vhdl:151:25  */
  assign n394_o = n379_o & n383_o;
  /* project.vhdl:151:25  */
  assign n395_o = n380_o & n384_o;
  /* project.vhdl:151:25  */
  assign n396_o = n380_o & n383_o;
  /* project.vhdl:151:25  */
  assign n397_o = n381_o & n384_o;
  /* project.vhdl:151:25  */
  assign n398_o = n381_o & n383_o;
  /* project.vhdl:151:25  */
  assign n399_o = n382_o & n384_o;
  /* project.vhdl:151:25  */
  assign n400_o = n382_o & n383_o;
  /* project.vhdl:151:25  */
  assign n401_o = i_rom_mrse[0]; // extract
  /* project.vhdl:151:25  */
  assign n402_o = ~n401_o;
  /* project.vhdl:151:25  */
  assign n403_o = n385_o & n402_o;
  /* project.vhdl:151:25  */
  assign n404_o = n385_o & n401_o;
  /* project.vhdl:151:25  */
  assign n405_o = n386_o & n402_o;
  /* project.vhdl:151:25  */
  assign n406_o = n386_o & n401_o;
  /* project.vhdl:151:25  */
  assign n407_o = n387_o & n402_o;
  /* project.vhdl:151:25  */
  assign n408_o = n387_o & n401_o;
  /* project.vhdl:151:25  */
  assign n409_o = n388_o & n402_o;
  /* project.vhdl:151:25  */
  assign n410_o = n388_o & n401_o;
  /* project.vhdl:151:25  */
  assign n411_o = n389_o & n402_o;
  /* project.vhdl:151:25  */
  assign n412_o = n389_o & n401_o;
  /* project.vhdl:151:25  */
  assign n413_o = n390_o & n402_o;
  /* project.vhdl:151:25  */
  assign n414_o = n390_o & n401_o;
  /* project.vhdl:151:25  */
  assign n415_o = n391_o & n402_o;
  /* project.vhdl:151:25  */
  assign n416_o = n391_o & n401_o;
  /* project.vhdl:151:25  */
  assign n417_o = n392_o & n402_o;
  /* project.vhdl:151:25  */
  assign n418_o = n392_o & n401_o;
  /* project.vhdl:151:25  */
  assign n419_o = n393_o & n402_o;
  /* project.vhdl:151:25  */
  assign n420_o = n393_o & n401_o;
  /* project.vhdl:151:25  */
  assign n421_o = n394_o & n402_o;
  /* project.vhdl:151:25  */
  assign n422_o = n394_o & n401_o;
  /* project.vhdl:151:25  */
  assign n423_o = n395_o & n402_o;
  /* project.vhdl:151:25  */
  assign n424_o = n395_o & n401_o;
  /* project.vhdl:151:25  */
  assign n425_o = n396_o & n402_o;
  /* project.vhdl:151:25  */
  assign n426_o = n396_o & n401_o;
  /* project.vhdl:151:25  */
  assign n427_o = n397_o & n402_o;
  /* project.vhdl:151:25  */
  assign n428_o = n397_o & n401_o;
  /* project.vhdl:151:25  */
  assign n429_o = n398_o & n402_o;
  /* project.vhdl:151:25  */
  assign n430_o = n398_o & n401_o;
  /* project.vhdl:151:25  */
  assign n431_o = n399_o & n402_o;
  /* project.vhdl:151:25  */
  assign n432_o = n399_o & n401_o;
  /* project.vhdl:151:25  */
  assign n433_o = n400_o & n402_o;
  /* project.vhdl:151:25  */
  assign n434_o = n400_o & n401_o;
  assign n435_o = rom_mrse[7:0]; // extract
  /* project.vhdl:151:25  */
  assign n436_o = n403_o ? sr_mrse : n435_o;
  assign n437_o = rom_mrse[15:8]; // extract
  /* project.vhdl:151:25  */
  assign n438_o = n404_o ? sr_mrse : n437_o;
  assign n439_o = rom_mrse[23:16]; // extract
  /* project.vhdl:151:25  */
  assign n440_o = n405_o ? sr_mrse : n439_o;
  assign n441_o = rom_mrse[31:24]; // extract
  /* project.vhdl:151:25  */
  assign n442_o = n406_o ? sr_mrse : n441_o;
  assign n443_o = rom_mrse[39:32]; // extract
  /* project.vhdl:151:25  */
  assign n444_o = n407_o ? sr_mrse : n443_o;
  assign n445_o = rom_mrse[47:40]; // extract
  /* project.vhdl:151:25  */
  assign n446_o = n408_o ? sr_mrse : n445_o;
  assign n447_o = rom_mrse[55:48]; // extract
  /* project.vhdl:151:25  */
  assign n448_o = n409_o ? sr_mrse : n447_o;
  assign n449_o = rom_mrse[63:56]; // extract
  /* project.vhdl:151:25  */
  assign n450_o = n410_o ? sr_mrse : n449_o;
  assign n451_o = rom_mrse[71:64]; // extract
  /* project.vhdl:151:25  */
  assign n452_o = n411_o ? sr_mrse : n451_o;
  assign n453_o = rom_mrse[79:72]; // extract
  /* project.vhdl:151:25  */
  assign n454_o = n412_o ? sr_mrse : n453_o;
  assign n455_o = rom_mrse[87:80]; // extract
  /* project.vhdl:151:25  */
  assign n456_o = n413_o ? sr_mrse : n455_o;
  assign n457_o = rom_mrse[95:88]; // extract
  /* project.vhdl:151:25  */
  assign n458_o = n414_o ? sr_mrse : n457_o;
  assign n459_o = rom_mrse[103:96]; // extract
  /* project.vhdl:151:25  */
  assign n460_o = n415_o ? sr_mrse : n459_o;
  assign n461_o = rom_mrse[111:104]; // extract
  /* project.vhdl:151:25  */
  assign n462_o = n416_o ? sr_mrse : n461_o;
  assign n463_o = rom_mrse[119:112]; // extract
  /* project.vhdl:151:25  */
  assign n464_o = n417_o ? sr_mrse : n463_o;
  assign n465_o = rom_mrse[127:120]; // extract
  /* project.vhdl:151:25  */
  assign n466_o = n418_o ? sr_mrse : n465_o;
  assign n467_o = rom_mrse[135:128]; // extract
  /* project.vhdl:151:25  */
  assign n468_o = n419_o ? sr_mrse : n467_o;
  assign n469_o = rom_mrse[143:136]; // extract
  /* project.vhdl:151:25  */
  assign n470_o = n420_o ? sr_mrse : n469_o;
  assign n471_o = rom_mrse[151:144]; // extract
  /* project.vhdl:151:25  */
  assign n472_o = n421_o ? sr_mrse : n471_o;
  assign n473_o = rom_mrse[159:152]; // extract
  /* project.vhdl:151:25  */
  assign n474_o = n422_o ? sr_mrse : n473_o;
  assign n475_o = rom_mrse[167:160]; // extract
  /* project.vhdl:151:25  */
  assign n476_o = n423_o ? sr_mrse : n475_o;
  assign n477_o = rom_mrse[175:168]; // extract
  /* project.vhdl:151:25  */
  assign n478_o = n424_o ? sr_mrse : n477_o;
  assign n479_o = rom_mrse[183:176]; // extract
  /* project.vhdl:151:25  */
  assign n480_o = n425_o ? sr_mrse : n479_o;
  assign n481_o = rom_mrse[191:184]; // extract
  /* project.vhdl:151:25  */
  assign n482_o = n426_o ? sr_mrse : n481_o;
  assign n483_o = rom_mrse[199:192]; // extract
  /* project.vhdl:151:25  */
  assign n484_o = n427_o ? sr_mrse : n483_o;
  assign n485_o = rom_mrse[207:200]; // extract
  /* project.vhdl:151:25  */
  assign n486_o = n428_o ? sr_mrse : n485_o;
  assign n487_o = rom_mrse[215:208]; // extract
  /* project.vhdl:151:25  */
  assign n488_o = n429_o ? sr_mrse : n487_o;
  assign n489_o = rom_mrse[223:216]; // extract
  /* project.vhdl:151:25  */
  assign n490_o = n430_o ? sr_mrse : n489_o;
  assign n491_o = rom_mrse[231:224]; // extract
  /* project.vhdl:151:25  */
  assign n492_o = n431_o ? sr_mrse : n491_o;
  assign n493_o = rom_mrse[239:232]; // extract
  /* project.vhdl:151:25  */
  assign n494_o = n432_o ? sr_mrse : n493_o;
  assign n495_o = rom_mrse[247:240]; // extract
  /* project.vhdl:151:25  */
  assign n496_o = n433_o ? sr_mrse : n495_o;
  assign n497_o = rom_mrse[255:248]; // extract
  /* project.vhdl:151:25  */
  assign n498_o = n434_o ? sr_mrse : n497_o;
  assign n499_o = {n498_o, n496_o, n494_o, n492_o, n490_o, n488_o, n486_o, n484_o, n482_o, n480_o, n478_o, n476_o, n474_o, n472_o, n470_o, n468_o, n466_o, n464_o, n462_o, n460_o, n458_o, n456_o, n454_o, n452_o, n450_o, n448_o, n446_o, n444_o, n442_o, n440_o, n438_o, n436_o};
  /* project.vhdl:250:29  */
  assign n500_o = i_rom_mrse[4]; // extract
  /* project.vhdl:250:29  */
  assign n501_o = ~n500_o;
  /* project.vhdl:250:29  */
  assign n502_o = i_rom_mrse[3]; // extract
  /* project.vhdl:250:29  */
  assign n503_o = ~n502_o;
  /* project.vhdl:250:29  */
  assign n504_o = n501_o & n503_o;
  /* project.vhdl:250:29  */
  assign n505_o = n501_o & n502_o;
  /* project.vhdl:250:29  */
  assign n506_o = n500_o & n503_o;
  /* project.vhdl:250:29  */
  assign n507_o = n500_o & n502_o;
  /* project.vhdl:250:29  */
  assign n508_o = i_rom_mrse[2]; // extract
  /* project.vhdl:250:29  */
  assign n509_o = ~n508_o;
  /* project.vhdl:250:29  */
  assign n510_o = n504_o & n509_o;
  /* project.vhdl:250:29  */
  assign n511_o = n504_o & n508_o;
  /* project.vhdl:250:29  */
  assign n512_o = n505_o & n509_o;
  /* project.vhdl:250:29  */
  assign n513_o = n505_o & n508_o;
  /* project.vhdl:250:29  */
  assign n514_o = n506_o & n509_o;
  /* project.vhdl:250:29  */
  assign n515_o = n506_o & n508_o;
  /* project.vhdl:250:29  */
  assign n516_o = n507_o & n509_o;
  /* project.vhdl:250:29  */
  assign n517_o = n507_o & n508_o;
  /* project.vhdl:250:29  */
  assign n518_o = i_rom_mrse[1]; // extract
  /* project.vhdl:250:29  */
  assign n519_o = ~n518_o;
  /* project.vhdl:250:29  */
  assign n520_o = n510_o & n519_o;
  /* project.vhdl:250:29  */
  assign n521_o = n510_o & n518_o;
  /* project.vhdl:250:29  */
  assign n522_o = n511_o & n519_o;
  /* project.vhdl:250:29  */
  assign n523_o = n511_o & n518_o;
  /* project.vhdl:250:29  */
  assign n524_o = n512_o & n519_o;
  /* project.vhdl:250:29  */
  assign n525_o = n512_o & n518_o;
  /* project.vhdl:250:29  */
  assign n526_o = n513_o & n519_o;
  /* project.vhdl:250:29  */
  assign n527_o = n513_o & n518_o;
  /* project.vhdl:250:29  */
  assign n528_o = n514_o & n519_o;
  /* project.vhdl:250:29  */
  assign n529_o = n514_o & n518_o;
  /* project.vhdl:250:29  */
  assign n530_o = n515_o & n519_o;
  /* project.vhdl:250:29  */
  assign n531_o = n515_o & n518_o;
  /* project.vhdl:250:29  */
  assign n532_o = n516_o & n519_o;
  /* project.vhdl:250:29  */
  assign n533_o = n516_o & n518_o;
  /* project.vhdl:250:29  */
  assign n534_o = n517_o & n519_o;
  /* project.vhdl:250:29  */
  assign n535_o = n517_o & n518_o;
  /* project.vhdl:250:29  */
  assign n536_o = i_rom_mrse[0]; // extract
  /* project.vhdl:250:29  */
  assign n537_o = ~n536_o;
  /* project.vhdl:250:29  */
  assign n538_o = n520_o & n537_o;
  /* project.vhdl:250:29  */
  assign n539_o = n520_o & n536_o;
  /* project.vhdl:250:29  */
  assign n540_o = n521_o & n537_o;
  /* project.vhdl:250:29  */
  assign n541_o = n521_o & n536_o;
  /* project.vhdl:250:29  */
  assign n542_o = n522_o & n537_o;
  /* project.vhdl:250:29  */
  assign n543_o = n522_o & n536_o;
  /* project.vhdl:250:29  */
  assign n544_o = n523_o & n537_o;
  /* project.vhdl:250:29  */
  assign n545_o = n523_o & n536_o;
  /* project.vhdl:250:29  */
  assign n546_o = n524_o & n537_o;
  /* project.vhdl:250:29  */
  assign n547_o = n524_o & n536_o;
  /* project.vhdl:250:29  */
  assign n548_o = n525_o & n537_o;
  /* project.vhdl:250:29  */
  assign n549_o = n525_o & n536_o;
  /* project.vhdl:250:29  */
  assign n550_o = n526_o & n537_o;
  /* project.vhdl:250:29  */
  assign n551_o = n526_o & n536_o;
  /* project.vhdl:250:29  */
  assign n552_o = n527_o & n537_o;
  /* project.vhdl:250:29  */
  assign n553_o = n527_o & n536_o;
  /* project.vhdl:250:29  */
  assign n554_o = n528_o & n537_o;
  /* project.vhdl:250:29  */
  assign n555_o = n528_o & n536_o;
  /* project.vhdl:250:29  */
  assign n556_o = n529_o & n537_o;
  /* project.vhdl:250:29  */
  assign n557_o = n529_o & n536_o;
  /* project.vhdl:250:29  */
  assign n558_o = n530_o & n537_o;
  /* project.vhdl:250:29  */
  assign n559_o = n530_o & n536_o;
  /* project.vhdl:250:29  */
  assign n560_o = n531_o & n537_o;
  /* project.vhdl:250:29  */
  assign n561_o = n531_o & n536_o;
  /* project.vhdl:250:29  */
  assign n562_o = n532_o & n537_o;
  /* project.vhdl:250:29  */
  assign n563_o = n532_o & n536_o;
  /* project.vhdl:250:29  */
  assign n564_o = n533_o & n537_o;
  /* project.vhdl:250:29  */
  assign n565_o = n533_o & n536_o;
  /* project.vhdl:250:29  */
  assign n566_o = n534_o & n537_o;
  /* project.vhdl:250:29  */
  assign n567_o = n534_o & n536_o;
  /* project.vhdl:250:29  */
  assign n568_o = n535_o & n537_o;
  /* project.vhdl:250:29  */
  assign n569_o = n535_o & n536_o;
  assign n570_o = n60_o[7:0]; // extract
  /* project.vhdl:250:29  */
  assign n571_o = n538_o ? n196_o : n570_o;
  assign n572_o = n60_o[15:8]; // extract
  /* project.vhdl:250:29  */
  assign n573_o = n539_o ? n196_o : n572_o;
  assign n574_o = n60_o[23:16]; // extract
  /* project.vhdl:250:29  */
  assign n575_o = n540_o ? n196_o : n574_o;
  assign n576_o = n60_o[31:24]; // extract
  /* project.vhdl:250:29  */
  assign n577_o = n541_o ? n196_o : n576_o;
  assign n578_o = n60_o[39:32]; // extract
  /* project.vhdl:250:29  */
  assign n579_o = n542_o ? n196_o : n578_o;
  assign n580_o = n60_o[47:40]; // extract
  /* project.vhdl:250:29  */
  assign n581_o = n543_o ? n196_o : n580_o;
  assign n582_o = n60_o[55:48]; // extract
  /* project.vhdl:250:29  */
  assign n583_o = n544_o ? n196_o : n582_o;
  assign n584_o = n60_o[63:56]; // extract
  /* project.vhdl:250:29  */
  assign n585_o = n545_o ? n196_o : n584_o;
  assign n586_o = n60_o[71:64]; // extract
  /* project.vhdl:250:29  */
  assign n587_o = n546_o ? n196_o : n586_o;
  assign n588_o = n60_o[79:72]; // extract
  /* project.vhdl:250:29  */
  assign n589_o = n547_o ? n196_o : n588_o;
  assign n590_o = n60_o[87:80]; // extract
  /* project.vhdl:250:29  */
  assign n591_o = n548_o ? n196_o : n590_o;
  assign n592_o = n60_o[95:88]; // extract
  /* project.vhdl:250:29  */
  assign n593_o = n549_o ? n196_o : n592_o;
  assign n594_o = n60_o[103:96]; // extract
  /* project.vhdl:250:29  */
  assign n595_o = n550_o ? n196_o : n594_o;
  assign n596_o = n60_o[111:104]; // extract
  /* project.vhdl:250:29  */
  assign n597_o = n551_o ? n196_o : n596_o;
  assign n598_o = n60_o[119:112]; // extract
  /* project.vhdl:250:29  */
  assign n599_o = n552_o ? n196_o : n598_o;
  assign n600_o = n60_o[127:120]; // extract
  /* project.vhdl:250:29  */
  assign n601_o = n553_o ? n196_o : n600_o;
  assign n602_o = n60_o[135:128]; // extract
  /* project.vhdl:250:29  */
  assign n603_o = n554_o ? n196_o : n602_o;
  assign n604_o = n60_o[143:136]; // extract
  /* project.vhdl:250:29  */
  assign n605_o = n555_o ? n196_o : n604_o;
  assign n606_o = n60_o[151:144]; // extract
  /* project.vhdl:250:29  */
  assign n607_o = n556_o ? n196_o : n606_o;
  assign n608_o = n60_o[159:152]; // extract
  /* project.vhdl:250:29  */
  assign n609_o = n557_o ? n196_o : n608_o;
  assign n610_o = n60_o[167:160]; // extract
  /* project.vhdl:250:29  */
  assign n611_o = n558_o ? n196_o : n610_o;
  assign n612_o = n60_o[175:168]; // extract
  /* project.vhdl:250:29  */
  assign n613_o = n559_o ? n196_o : n612_o;
  assign n614_o = n60_o[183:176]; // extract
  /* project.vhdl:250:29  */
  assign n615_o = n560_o ? n196_o : n614_o;
  assign n616_o = n60_o[191:184]; // extract
  /* project.vhdl:250:29  */
  assign n617_o = n561_o ? n196_o : n616_o;
  assign n618_o = n60_o[199:192]; // extract
  /* project.vhdl:250:29  */
  assign n619_o = n562_o ? n196_o : n618_o;
  assign n620_o = n60_o[207:200]; // extract
  /* project.vhdl:250:29  */
  assign n621_o = n563_o ? n196_o : n620_o;
  assign n622_o = n60_o[215:208]; // extract
  /* project.vhdl:250:29  */
  assign n623_o = n564_o ? n196_o : n622_o;
  assign n624_o = n60_o[223:216]; // extract
  /* project.vhdl:250:29  */
  assign n625_o = n565_o ? n196_o : n624_o;
  assign n626_o = n60_o[231:224]; // extract
  /* project.vhdl:250:29  */
  assign n627_o = n566_o ? n196_o : n626_o;
  assign n628_o = n60_o[239:232]; // extract
  /* project.vhdl:250:29  */
  assign n629_o = n567_o ? n196_o : n628_o;
  assign n630_o = n60_o[247:240]; // extract
  /* project.vhdl:250:29  */
  assign n631_o = n568_o ? n196_o : n630_o;
  assign n632_o = n60_o[255:248]; // extract
  /* project.vhdl:250:29  */
  assign n633_o = n569_o ? n196_o : n632_o;
  assign n634_o = {n633_o, n631_o, n629_o, n627_o, n625_o, n623_o, n621_o, n619_o, n617_o, n615_o, n613_o, n611_o, n609_o, n607_o, n605_o, n603_o, n601_o, n599_o, n597_o, n595_o, n593_o, n591_o, n589_o, n587_o, n585_o, n583_o, n581_o, n579_o, n577_o, n575_o, n573_o, n571_o};
  /* project.vhdl:263:29  */
  assign n635_o = i_rom_mrse[4]; // extract
  /* project.vhdl:263:29  */
  assign n636_o = ~n635_o;
  /* project.vhdl:263:29  */
  assign n637_o = i_rom_mrse[3]; // extract
  /* project.vhdl:263:29  */
  assign n638_o = ~n637_o;
  /* project.vhdl:263:29  */
  assign n639_o = n636_o & n638_o;
  /* project.vhdl:263:29  */
  assign n640_o = n636_o & n637_o;
  /* project.vhdl:263:29  */
  assign n641_o = n635_o & n638_o;
  /* project.vhdl:263:29  */
  assign n642_o = n635_o & n637_o;
  /* project.vhdl:263:29  */
  assign n643_o = i_rom_mrse[2]; // extract
  /* project.vhdl:263:29  */
  assign n644_o = ~n643_o;
  /* project.vhdl:263:29  */
  assign n645_o = n639_o & n644_o;
  /* project.vhdl:263:29  */
  assign n646_o = n639_o & n643_o;
  /* project.vhdl:263:29  */
  assign n647_o = n640_o & n644_o;
  /* project.vhdl:263:29  */
  assign n648_o = n640_o & n643_o;
  /* project.vhdl:263:29  */
  assign n649_o = n641_o & n644_o;
  /* project.vhdl:263:29  */
  assign n650_o = n641_o & n643_o;
  /* project.vhdl:263:29  */
  assign n651_o = n642_o & n644_o;
  /* project.vhdl:263:29  */
  assign n652_o = n642_o & n643_o;
  /* project.vhdl:263:29  */
  assign n653_o = i_rom_mrse[1]; // extract
  /* project.vhdl:263:29  */
  assign n654_o = ~n653_o;
  /* project.vhdl:263:29  */
  assign n655_o = n645_o & n654_o;
  /* project.vhdl:263:29  */
  assign n656_o = n645_o & n653_o;
  /* project.vhdl:263:29  */
  assign n657_o = n646_o & n654_o;
  /* project.vhdl:263:29  */
  assign n658_o = n646_o & n653_o;
  /* project.vhdl:263:29  */
  assign n659_o = n647_o & n654_o;
  /* project.vhdl:263:29  */
  assign n660_o = n647_o & n653_o;
  /* project.vhdl:263:29  */
  assign n661_o = n648_o & n654_o;
  /* project.vhdl:263:29  */
  assign n662_o = n648_o & n653_o;
  /* project.vhdl:263:29  */
  assign n663_o = n649_o & n654_o;
  /* project.vhdl:263:29  */
  assign n664_o = n649_o & n653_o;
  /* project.vhdl:263:29  */
  assign n665_o = n650_o & n654_o;
  /* project.vhdl:263:29  */
  assign n666_o = n650_o & n653_o;
  /* project.vhdl:263:29  */
  assign n667_o = n651_o & n654_o;
  /* project.vhdl:263:29  */
  assign n668_o = n651_o & n653_o;
  /* project.vhdl:263:29  */
  assign n669_o = n652_o & n654_o;
  /* project.vhdl:263:29  */
  assign n670_o = n652_o & n653_o;
  /* project.vhdl:263:29  */
  assign n671_o = i_rom_mrse[0]; // extract
  /* project.vhdl:263:29  */
  assign n672_o = ~n671_o;
  /* project.vhdl:263:29  */
  assign n673_o = n655_o & n672_o;
  /* project.vhdl:263:29  */
  assign n674_o = n655_o & n671_o;
  /* project.vhdl:263:29  */
  assign n675_o = n656_o & n672_o;
  /* project.vhdl:263:29  */
  assign n676_o = n656_o & n671_o;
  /* project.vhdl:263:29  */
  assign n677_o = n657_o & n672_o;
  /* project.vhdl:263:29  */
  assign n678_o = n657_o & n671_o;
  /* project.vhdl:263:29  */
  assign n679_o = n658_o & n672_o;
  /* project.vhdl:263:29  */
  assign n680_o = n658_o & n671_o;
  /* project.vhdl:263:29  */
  assign n681_o = n659_o & n672_o;
  /* project.vhdl:263:29  */
  assign n682_o = n659_o & n671_o;
  /* project.vhdl:263:29  */
  assign n683_o = n660_o & n672_o;
  /* project.vhdl:263:29  */
  assign n684_o = n660_o & n671_o;
  /* project.vhdl:263:29  */
  assign n685_o = n661_o & n672_o;
  /* project.vhdl:263:29  */
  assign n686_o = n661_o & n671_o;
  /* project.vhdl:263:29  */
  assign n687_o = n662_o & n672_o;
  /* project.vhdl:263:29  */
  assign n688_o = n662_o & n671_o;
  /* project.vhdl:263:29  */
  assign n689_o = n663_o & n672_o;
  /* project.vhdl:263:29  */
  assign n690_o = n663_o & n671_o;
  /* project.vhdl:263:29  */
  assign n691_o = n664_o & n672_o;
  /* project.vhdl:263:29  */
  assign n692_o = n664_o & n671_o;
  /* project.vhdl:263:29  */
  assign n693_o = n665_o & n672_o;
  /* project.vhdl:263:29  */
  assign n694_o = n665_o & n671_o;
  /* project.vhdl:263:29  */
  assign n695_o = n666_o & n672_o;
  /* project.vhdl:263:29  */
  assign n696_o = n666_o & n671_o;
  /* project.vhdl:263:29  */
  assign n697_o = n667_o & n672_o;
  /* project.vhdl:263:29  */
  assign n698_o = n667_o & n671_o;
  /* project.vhdl:263:29  */
  assign n699_o = n668_o & n672_o;
  /* project.vhdl:263:29  */
  assign n700_o = n668_o & n671_o;
  /* project.vhdl:263:29  */
  assign n701_o = n669_o & n672_o;
  /* project.vhdl:263:29  */
  assign n702_o = n669_o & n671_o;
  /* project.vhdl:263:29  */
  assign n703_o = n670_o & n672_o;
  /* project.vhdl:263:29  */
  assign n704_o = n670_o & n671_o;
  assign n705_o = n60_o[7:0]; // extract
  /* project.vhdl:263:29  */
  assign n706_o = n673_o ? n218_o : n705_o;
  assign n707_o = n60_o[15:8]; // extract
  /* project.vhdl:263:29  */
  assign n708_o = n674_o ? n218_o : n707_o;
  assign n709_o = n60_o[23:16]; // extract
  /* project.vhdl:263:29  */
  assign n710_o = n675_o ? n218_o : n709_o;
  assign n711_o = n60_o[31:24]; // extract
  /* project.vhdl:263:29  */
  assign n712_o = n676_o ? n218_o : n711_o;
  assign n713_o = n60_o[39:32]; // extract
  /* project.vhdl:263:29  */
  assign n714_o = n677_o ? n218_o : n713_o;
  assign n715_o = n60_o[47:40]; // extract
  /* project.vhdl:263:29  */
  assign n716_o = n678_o ? n218_o : n715_o;
  assign n717_o = n60_o[55:48]; // extract
  /* project.vhdl:263:29  */
  assign n718_o = n679_o ? n218_o : n717_o;
  assign n719_o = n60_o[63:56]; // extract
  /* project.vhdl:263:29  */
  assign n720_o = n680_o ? n218_o : n719_o;
  assign n721_o = n60_o[71:64]; // extract
  /* project.vhdl:263:29  */
  assign n722_o = n681_o ? n218_o : n721_o;
  assign n723_o = n60_o[79:72]; // extract
  /* project.vhdl:263:29  */
  assign n724_o = n682_o ? n218_o : n723_o;
  assign n725_o = n60_o[87:80]; // extract
  /* project.vhdl:263:29  */
  assign n726_o = n683_o ? n218_o : n725_o;
  assign n727_o = n60_o[95:88]; // extract
  /* project.vhdl:263:29  */
  assign n728_o = n684_o ? n218_o : n727_o;
  assign n729_o = n60_o[103:96]; // extract
  /* project.vhdl:263:29  */
  assign n730_o = n685_o ? n218_o : n729_o;
  assign n731_o = n60_o[111:104]; // extract
  /* project.vhdl:263:29  */
  assign n732_o = n686_o ? n218_o : n731_o;
  assign n733_o = n60_o[119:112]; // extract
  /* project.vhdl:263:29  */
  assign n734_o = n687_o ? n218_o : n733_o;
  assign n735_o = n60_o[127:120]; // extract
  /* project.vhdl:263:29  */
  assign n736_o = n688_o ? n218_o : n735_o;
  assign n737_o = n60_o[135:128]; // extract
  /* project.vhdl:263:29  */
  assign n738_o = n689_o ? n218_o : n737_o;
  assign n739_o = n60_o[143:136]; // extract
  /* project.vhdl:263:29  */
  assign n740_o = n690_o ? n218_o : n739_o;
  assign n741_o = n60_o[151:144]; // extract
  /* project.vhdl:263:29  */
  assign n742_o = n691_o ? n218_o : n741_o;
  assign n743_o = n60_o[159:152]; // extract
  /* project.vhdl:263:29  */
  assign n744_o = n692_o ? n218_o : n743_o;
  assign n745_o = n60_o[167:160]; // extract
  /* project.vhdl:263:29  */
  assign n746_o = n693_o ? n218_o : n745_o;
  assign n747_o = n60_o[175:168]; // extract
  /* project.vhdl:263:29  */
  assign n748_o = n694_o ? n218_o : n747_o;
  assign n749_o = n60_o[183:176]; // extract
  /* project.vhdl:263:29  */
  assign n750_o = n695_o ? n218_o : n749_o;
  assign n751_o = n60_o[191:184]; // extract
  /* project.vhdl:263:29  */
  assign n752_o = n696_o ? n218_o : n751_o;
  assign n753_o = n60_o[199:192]; // extract
  /* project.vhdl:263:29  */
  assign n754_o = n697_o ? n218_o : n753_o;
  assign n755_o = n60_o[207:200]; // extract
  /* project.vhdl:263:29  */
  assign n756_o = n698_o ? n218_o : n755_o;
  assign n757_o = n60_o[215:208]; // extract
  /* project.vhdl:263:29  */
  assign n758_o = n699_o ? n218_o : n757_o;
  assign n759_o = n60_o[223:216]; // extract
  /* project.vhdl:263:29  */
  assign n760_o = n700_o ? n218_o : n759_o;
  assign n761_o = n60_o[231:224]; // extract
  /* project.vhdl:263:29  */
  assign n762_o = n701_o ? n218_o : n761_o;
  assign n763_o = n60_o[239:232]; // extract
  /* project.vhdl:263:29  */
  assign n764_o = n702_o ? n218_o : n763_o;
  assign n765_o = n60_o[247:240]; // extract
  /* project.vhdl:263:29  */
  assign n766_o = n703_o ? n218_o : n765_o;
  assign n767_o = n60_o[255:248]; // extract
  /* project.vhdl:263:29  */
  assign n768_o = n704_o ? n218_o : n767_o;
  assign n769_o = {n768_o, n766_o, n764_o, n762_o, n760_o, n758_o, n756_o, n754_o, n752_o, n750_o, n748_o, n746_o, n744_o, n742_o, n740_o, n738_o, n736_o, n734_o, n732_o, n730_o, n728_o, n726_o, n724_o, n722_o, n720_o, n718_o, n716_o, n714_o, n712_o, n710_o, n708_o, n706_o};
endmodule

