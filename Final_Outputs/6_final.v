module digital_lock (clk,
    enter,
    error,
    locked,
    reset,
    unlock,
    digit);
 input clk;
 input enter;
 output error;
 output locked;
 input reset;
 output unlock;
 input [3:0] digit;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire _34_;
 wire _35_;
 wire _36_;
 wire _37_;
 wire _38_;
 wire _39_;
 wire _40_;
 wire _41_;
 wire _42_;
 wire _43_;
 wire _44_;
 wire _45_;
 wire _46_;
 wire _47_;
 wire _48_;
 wire _49_;
 wire \attempts_state[0] ;
 wire \attempts_state[2] ;
 wire \digit_count[0] ;
 wire \digit_count[1] ;
 wire net7;
 wire first_three_match;
 wire net8;
 wire net9;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;

 sky130_fd_sc_hd__nand2_1 _50_ (.A(net3),
    .B(first_three_match),
    .Y(_15_));
 sky130_fd_sc_hd__inv_1 _51_ (.A(_15_),
    .Y(_16_));
 sky130_fd_sc_hd__nor2_1 _52_ (.A(net1),
    .B(net2),
    .Y(_17_));
 sky130_fd_sc_hd__inv_1 _53_ (.A(net4),
    .Y(_18_));
 sky130_fd_sc_hd__nand3_2 _54_ (.A(_16_),
    .B(_17_),
    .C(_18_),
    .Y(_19_));
 sky130_fd_sc_hd__nand2_1 _55_ (.A(_10_),
    .B(net5),
    .Y(_20_));
 sky130_fd_sc_hd__clkinv_1 _56_ (.A(_20_),
    .Y(_21_));
 sky130_fd_sc_hd__nand2_2 _57_ (.A(_19_),
    .B(_21_),
    .Y(_22_));
 sky130_fd_sc_hd__inv_2 _58_ (.A(net8),
    .Y(_23_));
 sky130_fd_sc_hd__nand2_1 _59_ (.A(_22_),
    .B(_23_),
    .Y(_00_));
 sky130_fd_sc_hd__or2_1 _60_ (.A(\attempts_state[2] ),
    .B(\attempts_state[0] ),
    .X(_24_));
 sky130_fd_sc_hd__o21bai_2 _61_ (.A1(_24_),
    .A2(_22_),
    .B1_N(net8),
    .Y(_01_));
 sky130_fd_sc_hd__inv_2 _62_ (.A(_10_),
    .Y(_25_));
 sky130_fd_sc_hd__nand2_2 _63_ (.A(_23_),
    .B(net5),
    .Y(_26_));
 sky130_fd_sc_hd__nor2_4 _64_ (.A(_25_),
    .B(_26_),
    .Y(_27_));
 sky130_fd_sc_hd__nand3_1 _65_ (.A(_19_),
    .B(\attempts_state[0] ),
    .C(_27_),
    .Y(_28_));
 sky130_fd_sc_hd__inv_2 _66_ (.A(_27_),
    .Y(_29_));
 sky130_fd_sc_hd__nand2_1 _67_ (.A(_29_),
    .B(\attempts_state[2] ),
    .Y(_30_));
 sky130_fd_sc_hd__nand2_1 _68_ (.A(_28_),
    .B(_30_),
    .Y(_04_));
 sky130_fd_sc_hd__nand2_2 _69_ (.A(_29_),
    .B(\attempts_state[0] ),
    .Y(_31_));
 sky130_fd_sc_hd__o21ai_2 _70_ (.A1(_19_),
    .A2(_29_),
    .B1(_31_),
    .Y(_03_));
 sky130_fd_sc_hd__nor2_1 _71_ (.A(_19_),
    .B(_29_),
    .Y(_02_));
 sky130_fd_sc_hd__inv_1 _72_ (.A(net6),
    .Y(_11_));
 sky130_fd_sc_hd__inv_1 _73_ (.A(\digit_count[0] ),
    .Y(_05_));
 sky130_fd_sc_hd__inv_1 _74_ (.A(\digit_count[1] ),
    .Y(_06_));
 sky130_fd_sc_hd__nand3_1 _75_ (.A(_25_),
    .B(_23_),
    .C(net5),
    .Y(_32_));
 sky130_fd_sc_hd__nand2_1 _76_ (.A(_26_),
    .B(\digit_count[0] ),
    .Y(_33_));
 sky130_fd_sc_hd__o21ai_1 _77_ (.A1(\digit_count[0] ),
    .A2(_32_),
    .B1(_33_),
    .Y(_12_));
 sky130_fd_sc_hd__nor2_1 _78_ (.A(_08_),
    .B(_26_),
    .Y(_34_));
 sky130_fd_sc_hd__a21oi_1 _79_ (.A1(_06_),
    .A2(_26_),
    .B1(_34_),
    .Y(_13_));
 sky130_fd_sc_hd__inv_1 _80_ (.A(_09_),
    .Y(_35_));
 sky130_fd_sc_hd__nor2_1 _81_ (.A(net1),
    .B(_35_),
    .Y(_36_));
 sky130_fd_sc_hd__a21oi_1 _82_ (.A1(net1),
    .A2(_07_),
    .B1(net2),
    .Y(_37_));
 sky130_fd_sc_hd__nor2_2 _83_ (.A(_36_),
    .B(_37_),
    .Y(_38_));
 sky130_fd_sc_hd__or2_0 _84_ (.A(net4),
    .B(net3),
    .X(_39_));
 sky130_fd_sc_hd__nor2_1 _85_ (.A(_39_),
    .B(_32_),
    .Y(_40_));
 sky130_fd_sc_hd__nand2_1 _86_ (.A(first_three_match),
    .B(_08_),
    .Y(_41_));
 sky130_fd_sc_hd__clkinv_1 _87_ (.A(_41_),
    .Y(_42_));
 sky130_fd_sc_hd__nand2_1 _88_ (.A(_35_),
    .B(net1),
    .Y(_43_));
 sky130_fd_sc_hd__nand2_1 _89_ (.A(_42_),
    .B(_43_),
    .Y(_44_));
 sky130_fd_sc_hd__nand2_1 _90_ (.A(_44_),
    .B(net2),
    .Y(_45_));
 sky130_fd_sc_hd__nand3_1 _91_ (.A(_38_),
    .B(_40_),
    .C(_45_),
    .Y(_46_));
 sky130_fd_sc_hd__nand2_1 _92_ (.A(_26_),
    .B(first_three_match),
    .Y(_47_));
 sky130_fd_sc_hd__nand2_1 _93_ (.A(_46_),
    .B(_47_),
    .Y(_14_));
 sky130_fd_sc_hd__ha_1 _94_ (.A(_05_),
    .B(_06_),
    .COUT(_07_),
    .SUM(_08_));
 sky130_fd_sc_hd__ha_1 _95_ (.A(_05_),
    .B(\digit_count[1] ),
    .COUT(_09_),
    .SUM(_48_));
 sky130_fd_sc_hd__ha_1 _96_ (.A(\digit_count[0] ),
    .B(\digit_count[1] ),
    .COUT(_10_),
    .SUM(_49_));
 sky130_fd_sc_hd__dfstp_2 \attempts_state[0]$_DFF_PP1_  (.D(_03_),
    .Q(\attempts_state[0] ),
    .SET_B(_11_),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \attempts_state[2]$_DFF_PP0_  (.D(_04_),
    .Q(\attempts_state[2] ),
    .RESET_B(_11_),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \digit_count[0]$_DFFE_PP0N_  (.D(_12_),
    .Q(\digit_count[0] ),
    .RESET_B(_11_),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \digit_count[1]$_DFFE_PP0N_  (.D(_13_),
    .Q(\digit_count[1] ),
    .RESET_B(_11_),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \error$_DFF_PP0_  (.D(_00_),
    .Q(net7),
    .RESET_B(_11_),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \first_three_match$_DFFE_PP0N_  (.D(_14_),
    .Q(first_three_match),
    .RESET_B(_11_),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \locked$_DFF_PP0_  (.D(_01_),
    .Q(net8),
    .RESET_B(_11_),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \unlock$_DFF_PP0_  (.D(_02_),
    .Q(net9),
    .RESET_B(_11_),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input1 (.A(digit[0]),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input2 (.A(digit[1]),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input3 (.A(digit[2]),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input4 (.A(digit[3]),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input5 (.A(enter),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input6 (.A(reset),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output7 (.A(net7),
    .X(error));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output8 (.A(net8),
    .X(locked));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output9 (.A(net9),
    .X(unlock));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload0 (.A(clknet_1_0__leaf_clk));
endmodule
