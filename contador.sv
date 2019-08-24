module contador#(parameter N=3)
(input buttonclk, reset,
				 output [N-1:0] salida);
	
always @(posedge buttonclk, posedge reset)
	if(reset) salida <= 0;
	else salida <= salida + 1;		
endmodule
