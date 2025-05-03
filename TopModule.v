module TopModule(
	//////////// CLOCK //////////
	input 		          		CLK1,
	input 		          		CLK2,
	//////////// SEG7 //////////
	output		     [7:0]		HEX0,
	output		     [7:0]		HEX1,
	output		     [7:0]		HEX2,
	output		     [7:0]		HEX3,
	output		     [7:0]		HEX4,
	output		     [7:0]		HEX5,
	//////////// Push Button //////////
	input 		     [1:0]		BTN,
	//////////// LED //////////
	output		     [9:0]		LED,
	//////////// SW //////////
	input 		     [9:0]		SW

	);

    wire [31:0] a0;
	m_proc3 m_cpu(CLK1, a0);
	wire [7:0] out1, out2, out3, out4;
	m_seven_segment m1(a0[3:0], out1);
	m_seven_segment m2(a0[7:4], out2);
	m_seven_segment m3(a0[11:8], out3);
	m_seven_segment m4(a0[15:12], out4);
    assign HEX0=out1;
    assign HEX1=out2;
    assign HEX2=out3;
    assign HEX3=out4;
	
endmodule

