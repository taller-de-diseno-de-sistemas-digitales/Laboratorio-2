module FullAdderDeco(input logic [3:0] a, b, 
							input logic cin, buttonclk, reset,
							output logic[6:0] salida, salida2, salida3);

							
logic[3:0] s;
logic[3:0] cout;
logic[3:0] counter;

FullAdder4bits adder (a, b, cin, s, cout);
Deco7Segments deco (.entrada(s), .salida(salida));
Deco7Segments deco2 (.entrada(cout), .salida(salida2));
contador contador2b (.buttonclk(buttonclk), .reset(reset), .salida(counter));
Deco7Segments deco3 (.entrada(counter), .salida(salida3));

endmodule


