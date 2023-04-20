/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Thu Apr 20 18:05:09 2023
/////////////////////////////////////////////////////////////


module g_block_0 ( Gik, Pik, Gkj, Gij );
  input Gik, Pik, Gkj;
  output Gij;
  wire   n2;

  AOI21_X1 U1 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n2) );
  INV_X1 U2 ( .A(n2), .ZN(Gij) );
endmodule


module pg_block_0 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n2;

  AND2_X1 U1 ( .A1(Pik), .A2(Pkj), .ZN(Pij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n2) );
  INV_X1 U3 ( .A(n2), .ZN(Gij) );
endmodule


module pg_block_26 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n2, n5;

  CLKBUF_X1 U1 ( .A(Pik), .Z(n5) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n2) );
  AND2_X1 U3 ( .A1(Pkj), .A2(n5), .ZN(Pij) );
  INV_X1 U4 ( .A(n2), .ZN(Gij) );
endmodule


module pg_block_25 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n2;

  AOI21_X1 U1 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n2) );
  AND2_X1 U2 ( .A1(Pik), .A2(Pkj), .ZN(Pij) );
  INV_X1 U3 ( .A(n2), .ZN(Gij) );
endmodule


module pg_block_19 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n2;

  INV_X1 U1 ( .A(n2), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n2) );
  AND2_X1 U3 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
endmodule


module g_block_8 ( Gik, Pik, Gkj, Gij );
  input Gik, Pik, Gkj;
  output Gij;
  wire   n6, n7;

  INV_X1 U1 ( .A(Gik), .ZN(n6) );
  NAND2_X1 U2 ( .A1(Pik), .A2(Gkj), .ZN(n7) );
  NAND2_X1 U3 ( .A1(n6), .A2(n7), .ZN(Gij) );
endmodule


module pg_block_12 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n8, n9;

  AND2_X1 U1 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
  NOR2_X1 U2 ( .A1(Gik), .A2(Pik), .ZN(n8) );
  NOR2_X1 U3 ( .A1(Gik), .A2(Gkj), .ZN(n9) );
  NOR2_X1 U4 ( .A1(n9), .A2(n8), .ZN(Gij) );
endmodule


module g_block_7 ( Gik, Pik, Gkj, Gij );
  input Gik, Pik, Gkj;
  output Gij;
  wire   n2;

  AOI21_X1 U1 ( .B1(Gkj), .B2(Pik), .A(Gik), .ZN(n2) );
  INV_X1 U2 ( .A(n2), .ZN(Gij) );
endmodule


module g_block_5 ( Gik, Pik, Gkj, Gij );
  input Gik, Pik, Gkj;
  output Gij;
  wire   n2;

  AOI21_X1 U1 ( .B1(Gkj), .B2(Pik), .A(Gik), .ZN(n2) );
  INV_X1 U2 ( .A(n2), .ZN(Gij) );
endmodule


module g_block_4 ( Gik, Pik, Gkj, Gij );
  input Gik, Pik, Gkj;
  output Gij;
  wire   n2;

  INV_X1 U1 ( .A(n2), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Gkj), .B2(Pik), .A(Gik), .ZN(n2) );
endmodule


module g_block_1 ( Gik, Pik, Gkj, Gij );
  input Gik, Pik, Gkj;
  output Gij;
  wire   n6;

  INV_X1 U1 ( .A(n6), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n6) );
endmodule


module g_block_6 ( Gik, Pik, Gkj, Gij );
  input Gik, Pik, Gkj;
  output Gij;
  wire   n6;

  INV_X1 U1 ( .A(n6), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Gkj), .B2(Pik), .A(Gik), .ZN(n6) );
endmodule


module pg_block_2 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n8, n9;

  INV_X1 U1 ( .A(Gik), .ZN(n8) );
  AND2_X1 U2 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
  NAND2_X1 U3 ( .A1(Gkj), .A2(Pik), .ZN(n9) );
  NAND2_X1 U4 ( .A1(n8), .A2(n9), .ZN(Gij) );
endmodule


module pg_block_5 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n8, n9;

  AND2_X1 U1 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
  INV_X1 U2 ( .A(Gik), .ZN(n8) );
  NAND2_X1 U3 ( .A1(Gkj), .A2(Pik), .ZN(n9) );
  NAND2_X1 U4 ( .A1(n8), .A2(n9), .ZN(Gij) );
endmodule


module pg_block_8 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n6;

  AND2_X1 U1 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n6) );
  INV_X1 U3 ( .A(n6), .ZN(Gij) );
endmodule


module pg_block_10 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n6;

  AND2_X1 U1 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
  INV_X1 U2 ( .A(n6), .ZN(Gij) );
  AOI21_X1 U3 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n6) );
endmodule


module pg_block_11 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n6, n7;

  INV_X1 U1 ( .A(Gik), .ZN(n6) );
  NAND2_X1 U2 ( .A1(Pik), .A2(Gkj), .ZN(n7) );
  AND2_X1 U3 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
  NAND2_X1 U4 ( .A1(n6), .A2(n7), .ZN(Gij) );
endmodule


module pg_block_16 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n6;

  INV_X1 U1 ( .A(n6), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n6) );
  AND2_X1 U3 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
endmodule


module pg_block_20 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n6;

  INV_X1 U1 ( .A(n6), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n6) );
  AND2_X1 U3 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
endmodule


module pg_block_21 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n6;

  INV_X1 U1 ( .A(n6), .ZN(Gij) );
  AND2_X1 U2 ( .A1(Pik), .A2(Pkj), .ZN(Pij) );
  AOI21_X1 U3 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n6) );
endmodule


module pg_block_22 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n6;

  AOI21_X1 U1 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n6) );
  AND2_X1 U2 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
  INV_X1 U3 ( .A(n6), .ZN(Gij) );
endmodule


module pg_block_23 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n6;

  INV_X1 U1 ( .A(n6), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n6) );
  AND2_X1 U3 ( .A1(Pik), .A2(Pkj), .ZN(Pij) );
endmodule


module pg_block_24 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n6;

  INV_X1 U1 ( .A(n6), .ZN(Gij) );
  AND2_X1 U2 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
  AOI21_X1 U3 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n6) );
endmodule


module g_block_2 ( Gik, Pik, Gkj, Gij );
  input Gik, Pik, Gkj;
  output Gij;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Gkj), .B2(Pik), .A(Gik), .ZN(n7) );
endmodule


module g_block_3 ( Gik, Pik, Gkj, Gij );
  input Gik, Pik, Gkj;
  output Gij;
  wire   n6;

  AOI21_X1 U1 ( .B1(Gkj), .B2(Pik), .A(Gik), .ZN(n6) );
  INV_X1 U2 ( .A(n6), .ZN(Gij) );
endmodule


module pg_block_1 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n7;

  AND2_X1 U1 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
  INV_X1 U2 ( .A(n7), .ZN(Gij) );
  AOI21_X1 U3 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n7) );
endmodule


module pg_block_3 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n7) );
  AND2_X1 U3 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
endmodule


module pg_block_4 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n7;

  AND2_X1 U1 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n7) );
  INV_X1 U3 ( .A(n7), .ZN(Gij) );
endmodule


module pg_block_6 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n7) );
  AND2_X1 U3 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
endmodule


module pg_block_7 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n7) );
  AND2_X1 U3 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
endmodule


module pg_block_9 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n7;

  AOI21_X1 U1 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n7) );
  AND2_X1 U2 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
  INV_X1 U3 ( .A(n7), .ZN(Gij) );
endmodule


module pg_block_13 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n7) );
  AND2_X1 U3 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
endmodule


module pg_block_14 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n7) );
  AND2_X1 U3 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
endmodule


module pg_block_15 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n7) );
  AND2_X1 U3 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
endmodule


module pg_block_17 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(Gij) );
  AND2_X1 U2 ( .A1(Pik), .A2(Pkj), .ZN(Pij) );
  AOI21_X1 U3 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n7) );
endmodule


module pg_block_18 ( Gik, Pik, Gkj, Pkj, Gij, Pij );
  input Gik, Pik, Gkj, Pkj;
  output Gij, Pij;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gkj), .A(Gik), .ZN(n7) );
  AND2_X1 U3 ( .A1(Pkj), .A2(Pik), .ZN(Pij) );
endmodule


module pstlaa_NBIT_PER_BLOCK4_NBIT32 ( Pin, Gin, Gout );
  input [32:1] Pin;
  input [32:1] Gin;
  output [8:1] Gout;
  wire   n8, n9, n10, \P[1][32] , \P[1][30] , \P[1][28] , \P[1][26] ,
         \P[1][24] , \P[1][22] , \P[1][20] , \P[1][18] , \P[1][16] ,
         \P[1][14] , \P[1][12] , \P[1][10] , \P[1][8] , \P[1][6] , \P[1][4] ,
         \P[2][32] , \P[2][24] , \P[2][16] , \P[2][8] , \P[3][32] , \P[3][28] ,
         \P[3][20] , \P[3][16] , \P[3][12] , \P[4][32] , \P[4][28] ,
         \P[4][24] , \G[1][32] , \G[1][30] , \G[1][28] , \G[1][26] ,
         \G[1][24] , \G[1][22] , \G[1][20] , \G[1][18] , \G[1][16] ,
         \G[1][14] , \G[1][12] , \G[1][10] , \G[1][8] , \G[1][6] , \G[1][4] ,
         \G[1][2] , \G[2][32] , \G[2][24] , \G[2][16] , \G[2][8] , \G[3][32] ,
         \G[3][28] , \G[3][20] , \G[3][16] , \G[3][12] , \G[4][32] ,
         \G[4][28] , \G[4][24] , n11, n12, n15, n16;

  g_block_0 g_inst_1_2 ( .Gik(Gin[2]), .Pik(Pin[2]), .Gkj(Gin[1]), .Gij(
        \G[1][2] ) );
  pg_block_0 pg_inst_1_4 ( .Gik(Gin[4]), .Pik(Pin[4]), .Gkj(Gin[3]), .Pkj(
        Pin[3]), .Gij(\G[1][4] ), .Pij(\P[1][4] ) );
  pg_block_26 pg_inst_1_6 ( .Gik(Gin[6]), .Pik(Pin[6]), .Gkj(Gin[5]), .Pkj(
        Pin[5]), .Gij(\G[1][6] ), .Pij(\P[1][6] ) );
  pg_block_25 pg_inst_1_8 ( .Gik(Gin[8]), .Pik(Pin[8]), .Gkj(Gin[7]), .Pkj(
        Pin[7]), .Gij(\G[1][8] ), .Pij(\P[1][8] ) );
  pg_block_24 pg_inst_1_10 ( .Gik(Gin[10]), .Pik(Pin[10]), .Gkj(Gin[9]), .Pkj(
        Pin[9]), .Gij(\G[1][10] ), .Pij(\P[1][10] ) );
  pg_block_23 pg_inst_1_12 ( .Gik(Gin[12]), .Pik(Pin[12]), .Gkj(Gin[11]), 
        .Pkj(Pin[11]), .Gij(\G[1][12] ), .Pij(\P[1][12] ) );
  pg_block_22 pg_inst_1_14 ( .Gik(Gin[14]), .Pik(Pin[14]), .Gkj(Gin[13]), 
        .Pkj(Pin[13]), .Gij(\G[1][14] ), .Pij(\P[1][14] ) );
  pg_block_21 pg_inst_1_16 ( .Gik(Gin[16]), .Pik(Pin[16]), .Gkj(Gin[15]), 
        .Pkj(Pin[15]), .Gij(\G[1][16] ), .Pij(\P[1][16] ) );
  pg_block_20 pg_inst_1_18 ( .Gik(Gin[18]), .Pik(Pin[18]), .Gkj(Gin[17]), 
        .Pkj(Pin[17]), .Gij(\G[1][18] ), .Pij(\P[1][18] ) );
  pg_block_19 pg_inst_1_20 ( .Gik(Gin[20]), .Pik(Pin[20]), .Gkj(Gin[19]), 
        .Pkj(Pin[19]), .Gij(\G[1][20] ), .Pij(\P[1][20] ) );
  pg_block_18 pg_inst_1_22 ( .Gik(Gin[22]), .Pik(Pin[22]), .Gkj(Gin[21]), 
        .Pkj(Pin[21]), .Gij(\G[1][22] ), .Pij(\P[1][22] ) );
  pg_block_17 pg_inst_1_24 ( .Gik(Gin[24]), .Pik(Pin[24]), .Gkj(Gin[23]), 
        .Pkj(Pin[23]), .Gij(\G[1][24] ), .Pij(\P[1][24] ) );
  pg_block_16 pg_inst_1_26 ( .Gik(Gin[26]), .Pik(Pin[26]), .Gkj(Gin[25]), 
        .Pkj(Pin[25]), .Gij(\G[1][26] ), .Pij(\P[1][26] ) );
  pg_block_15 pg_inst_1_28 ( .Gik(Gin[28]), .Pik(Pin[28]), .Gkj(Gin[27]), 
        .Pkj(Pin[27]), .Gij(\G[1][28] ), .Pij(\P[1][28] ) );
  pg_block_14 pg_inst_1_30 ( .Gik(Gin[30]), .Pik(Pin[30]), .Gkj(Gin[29]), 
        .Pkj(Pin[29]), .Gij(\G[1][30] ), .Pij(\P[1][30] ) );
  pg_block_13 pg_inst_1_32 ( .Gik(Gin[32]), .Pik(Pin[32]), .Gkj(Gin[31]), 
        .Pkj(Pin[31]), .Gij(\G[1][32] ), .Pij(\P[1][32] ) );
  g_block_8 g_inst_2_4 ( .Gik(\G[1][4] ), .Pik(\P[1][4] ), .Gkj(\G[1][2] ), 
        .Gij(n10) );
  pg_block_12 pg_inst_2_8 ( .Gik(\G[1][8] ), .Pik(\P[1][8] ), .Gkj(\G[1][6] ), 
        .Pkj(\P[1][6] ), .Gij(\G[2][8] ), .Pij(\P[2][8] ) );
  pg_block_11 pg_inst_2_12 ( .Gik(\G[1][12] ), .Pik(\P[1][12] ), .Gkj(
        \G[1][10] ), .Pkj(\P[1][10] ), .Gij(\G[3][12] ), .Pij(\P[3][12] ) );
  pg_block_10 pg_inst_2_16 ( .Gik(\G[1][16] ), .Pik(\P[1][16] ), .Gkj(
        \G[1][14] ), .Pkj(\P[1][14] ), .Gij(\G[2][16] ), .Pij(\P[2][16] ) );
  pg_block_9 pg_inst_2_20 ( .Gik(\G[1][20] ), .Pik(\P[1][20] ), .Gkj(
        \G[1][18] ), .Pkj(\P[1][18] ), .Gij(\G[3][20] ), .Pij(\P[3][20] ) );
  pg_block_8 pg_inst_2_24 ( .Gik(\G[1][24] ), .Pik(\P[1][24] ), .Gkj(
        \G[1][22] ), .Pkj(\P[1][22] ), .Gij(\G[2][24] ), .Pij(\P[2][24] ) );
  pg_block_7 pg_inst_2_28 ( .Gik(\G[1][28] ), .Pik(\P[1][28] ), .Gkj(
        \G[1][26] ), .Pkj(\P[1][26] ), .Gij(\G[3][28] ), .Pij(\P[3][28] ) );
  pg_block_6 pg_inst_2_32 ( .Gik(\G[1][32] ), .Pik(\P[1][32] ), .Gkj(
        \G[1][30] ), .Pkj(\P[1][30] ), .Gij(\G[2][32] ), .Pij(\P[2][32] ) );
  g_block_7 g_inst_3_8 ( .Gik(\G[2][8] ), .Pik(\P[2][8] ), .Gkj(n10), .Gij(n9)
         );
  pg_block_5 pg_inst_3_16 ( .Gik(\G[2][16] ), .Pik(\P[2][16] ), .Gkj(
        \G[3][12] ), .Pkj(\P[3][12] ), .Gij(\G[3][16] ), .Pij(\P[3][16] ) );
  pg_block_4 pg_inst_3_24 ( .Gik(\G[2][24] ), .Pik(\P[2][24] ), .Gkj(
        \G[3][20] ), .Pkj(\P[3][20] ), .Gij(\G[4][24] ), .Pij(\P[4][24] ) );
  pg_block_3 pg_inst_3_32 ( .Gik(\G[2][32] ), .Pik(\P[2][32] ), .Gkj(
        \G[3][28] ), .Pkj(\P[3][28] ), .Gij(\G[3][32] ), .Pij(\P[3][32] ) );
  g_block_6 g_inst_4_12 ( .Gik(\G[3][12] ), .Pik(\P[3][12] ), .Gkj(n15), .Gij(
        Gout[3]) );
  g_block_5 g_inst_4_16 ( .Gik(\G[3][16] ), .Pik(\P[3][16] ), .Gkj(n9), .Gij(
        n8) );
  pg_block_2 pg_inst_4_28 ( .Gik(\G[3][28] ), .Pik(\P[3][28] ), .Gkj(
        \G[4][24] ), .Pkj(\P[4][24] ), .Gij(\G[4][28] ), .Pij(\P[4][28] ) );
  pg_block_1 pg_inst_4_32 ( .Gik(\G[3][32] ), .Pik(\P[3][32] ), .Gkj(n12), 
        .Pkj(\P[4][24] ), .Gij(\G[4][32] ), .Pij(\P[4][32] ) );
  g_block_4 g_inst_5_20 ( .Gik(\G[3][20] ), .Pik(\P[3][20] ), .Gkj(n8), .Gij(
        Gout[5]) );
  g_block_3 g_inst_5_24 ( .Gik(n12), .Pik(\P[4][24] ), .Gkj(n8), .Gij(Gout[6])
         );
  g_block_2 g_inst_5_28 ( .Gik(\G[4][28] ), .Pik(\P[4][28] ), .Gkj(n8), .Gij(
        Gout[7]) );
  g_block_1 g_inst_5_32 ( .Gik(\G[4][32] ), .Pik(\P[4][32] ), .Gkj(n11), .Gij(
        Gout[8]) );
  BUF_X2 U1 ( .A(n8), .Z(Gout[4]) );
  CLKBUF_X1 U2 ( .A(n9), .Z(n15) );
  CLKBUF_X1 U3 ( .A(n8), .Z(n11) );
  CLKBUF_X1 U4 ( .A(\G[4][24] ), .Z(n12) );
  CLKBUF_X1 U5 ( .A(n10), .Z(Gout[1]) );
  INV_X1 U6 ( .A(n15), .ZN(n16) );
  INV_X1 U7 ( .A(n16), .ZN(Gout[2]) );
endmodule


module carry_generator_NBIT_PER_BLOCK4_NBIT32 ( A, B, Ci, Co );
  input [31:0] A;
  input [31:0] B;
  output [8:0] Co;
  input Ci;
  wire   Ci, n1, n2, n3, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46;
  wire   [31:0] P;
  wire   [31:0] G;
  assign Co[0] = Ci;

  pstlaa_NBIT_PER_BLOCK4_NBIT32 carry_logic ( .Pin(P), .Gin(G), .Gout(Co[8:1])
         );
  XOR2_X1 U37 ( .A(B[9]), .B(A[9]), .Z(P[9]) );
  XOR2_X1 U38 ( .A(B[8]), .B(A[8]), .Z(P[8]) );
  XOR2_X1 U40 ( .A(B[6]), .B(A[6]), .Z(P[6]) );
  XOR2_X1 U42 ( .A(B[4]), .B(A[4]), .Z(P[4]) );
  XOR2_X1 U44 ( .A(B[31]), .B(A[31]), .Z(P[31]) );
  XOR2_X1 U45 ( .A(B[30]), .B(A[30]), .Z(P[30]) );
  XOR2_X1 U46 ( .A(B[2]), .B(A[2]), .Z(P[2]) );
  XOR2_X1 U47 ( .A(B[29]), .B(A[29]), .Z(P[29]) );
  XOR2_X1 U48 ( .A(B[28]), .B(A[28]), .Z(P[28]) );
  XOR2_X1 U49 ( .A(B[27]), .B(A[27]), .Z(P[27]) );
  XOR2_X1 U50 ( .A(B[26]), .B(A[26]), .Z(P[26]) );
  XOR2_X1 U51 ( .A(B[25]), .B(A[25]), .Z(P[25]) );
  XOR2_X1 U52 ( .A(B[24]), .B(A[24]), .Z(P[24]) );
  XOR2_X1 U54 ( .A(B[22]), .B(A[22]), .Z(P[22]) );
  XOR2_X1 U55 ( .A(B[21]), .B(A[21]), .Z(P[21]) );
  XOR2_X1 U56 ( .A(B[20]), .B(A[20]), .Z(P[20]) );
  XOR2_X1 U57 ( .A(B[1]), .B(A[1]), .Z(P[1]) );
  XOR2_X1 U59 ( .A(B[18]), .B(A[18]), .Z(P[18]) );
  XOR2_X1 U60 ( .A(B[17]), .B(A[17]), .Z(P[17]) );
  XOR2_X1 U61 ( .A(B[16]), .B(A[16]), .Z(P[16]) );
  XOR2_X1 U63 ( .A(B[14]), .B(A[14]), .Z(P[14]) );
  XOR2_X1 U64 ( .A(B[13]), .B(A[13]), .Z(P[13]) );
  XOR2_X1 U65 ( .A(B[12]), .B(A[12]), .Z(P[12]) );
  XOR2_X1 U67 ( .A(B[10]), .B(A[10]), .Z(P[10]) );
  XOR2_X1 U66 ( .A(B[11]), .B(A[11]), .Z(P[11]) );
  XOR2_X1 U43 ( .A(B[3]), .B(A[3]), .Z(P[3]) );
  AND2_X1 U1 ( .A1(B[3]), .A2(A[3]), .ZN(G[3]) );
  AND2_X1 U2 ( .A1(B[11]), .A2(A[11]), .ZN(G[11]) );
  NAND2_X1 U3 ( .A1(n28), .A2(B[5]), .ZN(n29) );
  NAND2_X1 U4 ( .A1(n27), .A2(A[5]), .ZN(n30) );
  NAND2_X1 U5 ( .A1(n29), .A2(n30), .ZN(P[5]) );
  INV_X1 U6 ( .A(B[5]), .ZN(n27) );
  INV_X1 U7 ( .A(A[5]), .ZN(n28) );
  NAND2_X1 U8 ( .A1(B[19]), .A2(n32), .ZN(n33) );
  NAND2_X1 U9 ( .A1(n31), .A2(A[19]), .ZN(n34) );
  NAND2_X1 U10 ( .A1(n33), .A2(n34), .ZN(P[19]) );
  INV_X1 U11 ( .A(B[19]), .ZN(n31) );
  INV_X1 U12 ( .A(A[19]), .ZN(n32) );
  NAND2_X1 U13 ( .A1(n36), .A2(B[7]), .ZN(n37) );
  NAND2_X1 U14 ( .A1(n35), .A2(A[7]), .ZN(n38) );
  NAND2_X1 U15 ( .A1(n37), .A2(n38), .ZN(P[7]) );
  INV_X1 U16 ( .A(B[7]), .ZN(n35) );
  INV_X1 U17 ( .A(A[7]), .ZN(n36) );
  NAND2_X1 U18 ( .A1(n40), .A2(B[23]), .ZN(n41) );
  NAND2_X1 U19 ( .A1(n39), .A2(A[23]), .ZN(n42) );
  NAND2_X1 U20 ( .A1(n42), .A2(n41), .ZN(P[23]) );
  INV_X1 U21 ( .A(B[23]), .ZN(n39) );
  INV_X1 U22 ( .A(A[23]), .ZN(n40) );
  NAND2_X1 U23 ( .A1(n44), .A2(B[15]), .ZN(n45) );
  NAND2_X1 U24 ( .A1(n43), .A2(A[15]), .ZN(n46) );
  NAND2_X1 U25 ( .A1(n46), .A2(n45), .ZN(P[15]) );
  INV_X1 U26 ( .A(B[15]), .ZN(n43) );
  INV_X1 U27 ( .A(A[15]), .ZN(n44) );
  XNOR2_X1 U28 ( .A(n2), .B(A[0]), .ZN(P[0]) );
  AND2_X1 U29 ( .A1(B[14]), .A2(A[14]), .ZN(G[14]) );
  AND2_X1 U30 ( .A1(B[18]), .A2(A[18]), .ZN(G[18]) );
  AND2_X1 U31 ( .A1(B[19]), .A2(A[19]), .ZN(G[19]) );
  AND2_X1 U32 ( .A1(B[12]), .A2(A[12]), .ZN(G[12]) );
  AND2_X1 U33 ( .A1(B[13]), .A2(A[13]), .ZN(G[13]) );
  AND2_X1 U34 ( .A1(B[10]), .A2(A[10]), .ZN(G[10]) );
  AND2_X1 U35 ( .A1(B[22]), .A2(A[22]), .ZN(G[22]) );
  AND2_X1 U36 ( .A1(B[23]), .A2(A[23]), .ZN(G[23]) );
  AND2_X1 U39 ( .A1(B[16]), .A2(A[16]), .ZN(G[16]) );
  AND2_X1 U41 ( .A1(B[17]), .A2(A[17]), .ZN(G[17]) );
  AND2_X1 U53 ( .A1(B[6]), .A2(A[6]), .ZN(G[6]) );
  AND2_X1 U58 ( .A1(B[7]), .A2(A[7]), .ZN(G[7]) );
  AND2_X1 U62 ( .A1(B[8]), .A2(A[8]), .ZN(G[8]) );
  AND2_X1 U68 ( .A1(B[9]), .A2(A[9]), .ZN(G[9]) );
  AND2_X1 U69 ( .A1(B[20]), .A2(A[20]), .ZN(G[20]) );
  AND2_X1 U70 ( .A1(B[21]), .A2(A[21]), .ZN(G[21]) );
  AND2_X1 U71 ( .A1(B[2]), .A2(A[2]), .ZN(G[2]) );
  AND2_X1 U72 ( .A1(B[1]), .A2(A[1]), .ZN(G[1]) );
  INV_X1 U73 ( .A(B[0]), .ZN(n2) );
  AND2_X1 U74 ( .A1(B[26]), .A2(A[26]), .ZN(G[26]) );
  AND2_X1 U75 ( .A1(B[27]), .A2(A[27]), .ZN(G[27]) );
  AND2_X1 U76 ( .A1(B[5]), .A2(A[5]), .ZN(G[5]) );
  AND2_X1 U77 ( .A1(B[24]), .A2(A[24]), .ZN(G[24]) );
  AND2_X1 U78 ( .A1(B[25]), .A2(A[25]), .ZN(G[25]) );
  AND2_X1 U79 ( .A1(B[30]), .A2(A[30]), .ZN(G[30]) );
  AND2_X1 U80 ( .A1(B[31]), .A2(A[31]), .ZN(G[31]) );
  AND2_X1 U81 ( .A1(B[4]), .A2(A[4]), .ZN(G[4]) );
  AND2_X1 U82 ( .A1(B[29]), .A2(A[29]), .ZN(G[29]) );
  AND2_X1 U83 ( .A1(B[28]), .A2(A[28]), .ZN(G[28]) );
  AND2_X1 U84 ( .A1(B[15]), .A2(A[15]), .ZN(G[15]) );
  OAI21_X1 U85 ( .B1(n2), .B2(n1), .A(n3), .ZN(G[0]) );
  INV_X1 U86 ( .A(A[0]), .ZN(n1) );
  OAI21_X1 U87 ( .B1(A[0]), .B2(B[0]), .A(Ci), .ZN(n3) );
endmodule


module FA_0 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n2), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n2) );
endmodule


module FA_63 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n2), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n2) );
endmodule


module FA_62 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n2), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n2) );
endmodule


module FA_61 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n2), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n2) );
endmodule


module RCA_NBIT4_0 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_0 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_63 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_62 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_61 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_57 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_58 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_59 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_60 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module RCA_NBIT4_15 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_60 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_59 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_58 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_57 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module carry_select_block_NBIT4_0 ( A, B, Cin, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  wire   n5, n6, n7, n8, n9;
  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_NBIT4_0 RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0) );
  RCA_NBIT4_15 RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  INV_X1 U3 ( .A(n6), .ZN(S[3]) );
  AOI22_X1 U4 ( .A1(S0[3]), .A2(n5), .B1(S1[3]), .B2(Cin), .ZN(n6) );
  INV_X1 U5 ( .A(n7), .ZN(S[2]) );
  AOI22_X1 U6 ( .A1(S0[2]), .A2(n5), .B1(S1[2]), .B2(Cin), .ZN(n7) );
  INV_X1 U7 ( .A(n8), .ZN(S[1]) );
  AOI22_X1 U8 ( .A1(S0[1]), .A2(n5), .B1(S1[1]), .B2(Cin), .ZN(n8) );
  INV_X1 U9 ( .A(n9), .ZN(S[0]) );
  AOI22_X1 U10 ( .A1(S0[0]), .A2(n5), .B1(S1[0]), .B2(Cin), .ZN(n9) );
  INV_X1 U11 ( .A(Cin), .ZN(n5) );
endmodule


module FA_49 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_50 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_51 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_52 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module RCA_NBIT4_13 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_52 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_51 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_50 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_49 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_53 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_54 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_55 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_56 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module RCA_NBIT4_14 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_56 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_55 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_54 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_53 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module carry_select_block_NBIT4_7 ( A, B, Cin, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  wire   n5, n6, n7, n8, n9;
  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_NBIT4_14 RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0) );
  RCA_NBIT4_13 RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  INV_X1 U3 ( .A(n6), .ZN(S[3]) );
  INV_X1 U4 ( .A(n7), .ZN(S[2]) );
  INV_X1 U5 ( .A(n8), .ZN(S[1]) );
  INV_X1 U6 ( .A(n9), .ZN(S[0]) );
  AOI22_X1 U7 ( .A1(S0[3]), .A2(n5), .B1(S1[3]), .B2(Cin), .ZN(n6) );
  AOI22_X1 U8 ( .A1(S0[2]), .A2(n5), .B1(S1[2]), .B2(Cin), .ZN(n7) );
  AOI22_X1 U9 ( .A1(S0[1]), .A2(n5), .B1(S1[1]), .B2(Cin), .ZN(n8) );
  AOI22_X1 U10 ( .A1(S0[0]), .A2(n5), .B1(S1[0]), .B2(Cin), .ZN(n9) );
  INV_X1 U11 ( .A(Cin), .ZN(n5) );
endmodule


module FA_9 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_10 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_11 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_12 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module RCA_NBIT4_3 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_12 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_11 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_10 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_9 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_13 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_14 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_15 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_16 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module RCA_NBIT4_4 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_16 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_15 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_14 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_13 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module carry_select_block_NBIT4_2 ( A, B, Cin, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;

  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_NBIT4_4 RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0) );
  RCA_NBIT4_3 RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  MUX2_X1 U3 ( .A(S0[0]), .B(S1[0]), .S(Cin), .Z(S[0]) );
  MUX2_X1 U4 ( .A(S0[2]), .B(S1[2]), .S(Cin), .Z(S[2]) );
  MUX2_X1 U5 ( .A(S0[1]), .B(S1[1]), .S(Cin), .Z(S[1]) );
  MUX2_X1 U6 ( .A(S0[3]), .B(S1[3]), .S(Cin), .Z(S[3]) );
endmodule


module FA_1 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_2 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_3 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_4 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module RCA_NBIT4_1 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_4 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_3 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_2 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_1 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_5 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_6 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_7 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_8 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module RCA_NBIT4_2 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_8 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_7 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_6 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_5 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module carry_select_block_NBIT4_1 ( A, B, Cin, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;

  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_NBIT4_2 RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0) );
  RCA_NBIT4_1 RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  MUX2_X1 U3 ( .A(S0[0]), .B(S1[0]), .S(Cin), .Z(S[0]) );
  MUX2_X1 U4 ( .A(S0[1]), .B(S1[1]), .S(Cin), .Z(S[1]) );
  MUX2_X1 U5 ( .A(S0[2]), .B(S1[2]), .S(Cin), .Z(S[2]) );
  MUX2_X1 U6 ( .A(S0[3]), .B(S1[3]), .S(Cin), .Z(S[3]) );
endmodule


module FA_17 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_18 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_19 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_20 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module RCA_NBIT4_5 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_20 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_19 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_18 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_17 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_21 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_22 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_23 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_24 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module RCA_NBIT4_6 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_24 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_23 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_22 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_21 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module carry_select_block_NBIT4_3 ( A, B, Cin, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;

  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_NBIT4_6 RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0) );
  RCA_NBIT4_5 RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  MUX2_X1 U3 ( .A(S0[0]), .B(S1[0]), .S(Cin), .Z(S[0]) );
  MUX2_X1 U4 ( .A(S0[2]), .B(S1[2]), .S(Cin), .Z(S[2]) );
  MUX2_X1 U5 ( .A(S0[1]), .B(S1[1]), .S(Cin), .Z(S[1]) );
  MUX2_X1 U6 ( .A(S0[3]), .B(S1[3]), .S(Cin), .Z(S[3]) );
endmodule


module FA_25 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_26 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_27 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_28 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module RCA_NBIT4_7 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_28 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_27 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_26 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_25 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_29 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_30 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_31 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_32 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module RCA_NBIT4_8 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_32 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_31 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_30 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_29 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module carry_select_block_NBIT4_4 ( A, B, Cin, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  wire   n10, n11, n12, n13, n14, n15;
  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_NBIT4_8 RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0) );
  RCA_NBIT4_7 RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  INV_X1 U3 ( .A(Cin), .ZN(n10) );
  INV_X1 U4 ( .A(n14), .ZN(S[3]) );
  INV_X1 U5 ( .A(n12), .ZN(S[1]) );
  INV_X1 U6 ( .A(n13), .ZN(S[2]) );
  INV_X1 U7 ( .A(n11), .ZN(S[0]) );
  AOI22_X1 U8 ( .A1(S0[3]), .A2(n15), .B1(S1[3]), .B2(Cin), .ZN(n14) );
  AOI22_X1 U9 ( .A1(S0[2]), .A2(n10), .B1(S1[2]), .B2(Cin), .ZN(n13) );
  AOI22_X1 U10 ( .A1(S0[1]), .A2(n10), .B1(S1[1]), .B2(Cin), .ZN(n12) );
  AOI22_X1 U11 ( .A1(S0[0]), .A2(n15), .B1(S1[0]), .B2(Cin), .ZN(n11) );
  INV_X1 U12 ( .A(Cin), .ZN(n15) );
endmodule


module FA_33 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_34 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_35 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_36 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module RCA_NBIT4_9 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_36 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_35 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_34 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_33 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_37 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_38 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_39 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_40 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module RCA_NBIT4_10 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_40 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_39 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_38 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_37 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module carry_select_block_NBIT4_5 ( A, B, Cin, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  wire   n10, n11, n12, n13, n14, n15;
  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_NBIT4_10 RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0) );
  RCA_NBIT4_9 RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  INV_X1 U3 ( .A(Cin), .ZN(n10) );
  INV_X1 U4 ( .A(n14), .ZN(S[3]) );
  INV_X1 U5 ( .A(n12), .ZN(S[1]) );
  INV_X1 U6 ( .A(n13), .ZN(S[2]) );
  INV_X1 U7 ( .A(n11), .ZN(S[0]) );
  INV_X1 U8 ( .A(Cin), .ZN(n15) );
  AOI22_X1 U9 ( .A1(S0[3]), .A2(n10), .B1(S1[3]), .B2(Cin), .ZN(n14) );
  AOI22_X1 U10 ( .A1(S0[2]), .A2(n10), .B1(S1[2]), .B2(Cin), .ZN(n13) );
  AOI22_X1 U11 ( .A1(S0[1]), .A2(n15), .B1(S1[1]), .B2(Cin), .ZN(n12) );
  AOI22_X1 U12 ( .A1(S0[0]), .A2(n15), .B1(S1[0]), .B2(Cin), .ZN(n11) );
endmodule


module FA_41 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_42 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_43 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_44 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module RCA_NBIT4_11 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_44 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_43 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_42 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_41 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_45 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_46 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_47 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module FA_48 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(Ci), .B(n10), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(n11), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n10), .B2(Ci), .ZN(n11) );
endmodule


module RCA_NBIT4_12 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_48 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_47 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_46 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_45 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module carry_select_block_NBIT4_6 ( A, B, Cin, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  wire   n10, n11, n12, n13, n14;
  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_NBIT4_12 RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0) );
  RCA_NBIT4_11 RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  INV_X1 U3 ( .A(n13), .ZN(S[3]) );
  INV_X1 U4 ( .A(n11), .ZN(S[1]) );
  INV_X1 U5 ( .A(n12), .ZN(S[2]) );
  INV_X1 U6 ( .A(n10), .ZN(S[0]) );
  AOI22_X1 U7 ( .A1(S0[3]), .A2(n14), .B1(S1[3]), .B2(Cin), .ZN(n13) );
  AOI22_X1 U8 ( .A1(S0[2]), .A2(n14), .B1(S1[2]), .B2(Cin), .ZN(n12) );
  AOI22_X1 U9 ( .A1(S0[1]), .A2(n14), .B1(S1[1]), .B2(Cin), .ZN(n11) );
  AOI22_X1 U10 ( .A1(S0[0]), .A2(n14), .B1(S1[0]), .B2(Cin), .ZN(n10) );
  INV_X1 U11 ( .A(Cin), .ZN(n14) );
endmodule


module sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 ( A, B, Ci, S );
  input [31:0] A;
  input [31:0] B;
  input [7:0] Ci;
  output [31:0] S;


  carry_select_block_NBIT4_0 CSB_1 ( .A(A[3:0]), .B(B[3:0]), .Cin(Ci[0]), .S(
        S[3:0]) );
  carry_select_block_NBIT4_7 CSB_2 ( .A(A[7:4]), .B(B[7:4]), .Cin(Ci[1]), .S(
        S[7:4]) );
  carry_select_block_NBIT4_6 CSB_3 ( .A(A[11:8]), .B(B[11:8]), .Cin(Ci[2]), 
        .S(S[11:8]) );
  carry_select_block_NBIT4_5 CSB_4 ( .A(A[15:12]), .B(B[15:12]), .Cin(Ci[3]), 
        .S(S[15:12]) );
  carry_select_block_NBIT4_4 CSB_5 ( .A(A[19:16]), .B(B[19:16]), .Cin(Ci[4]), 
        .S(S[19:16]) );
  carry_select_block_NBIT4_3 CSB_6 ( .A(A[23:20]), .B(B[23:20]), .Cin(Ci[5]), 
        .S(S[23:20]) );
  carry_select_block_NBIT4_2 CSB_7 ( .A(A[27:24]), .B(B[27:24]), .Cin(Ci[6]), 
        .S(S[27:24]) );
  carry_select_block_NBIT4_1 CSB_8 ( .A(A[31:28]), .B(B[31:28]), .Cin(Ci[7]), 
        .S(S[31:28]) );
endmodule


module p4_adder_1 ( A, B, Cin, S, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4;
  wire   [7:0] C;

  carry_generator_NBIT_PER_BLOCK4_NBIT32 carry ( .A(A), .B(B), .Ci(Cin), .Co({
        Cout, C}) );
  sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 sum ( .A({A[31:24], n2, A[22:8], n3, 
        A[6:0]}), .B({B[31:8], n4, B[6], n1, B[4:0]}), .Ci(C), .S(S) );
  BUF_X1 U1 ( .A(B[5]), .Z(n1) );
  BUF_X1 U2 ( .A(A[23]), .Z(n2) );
  BUF_X1 U3 ( .A(A[7]), .Z(n3) );
  BUF_X1 U4 ( .A(B[7]), .Z(n4) );
endmodule

