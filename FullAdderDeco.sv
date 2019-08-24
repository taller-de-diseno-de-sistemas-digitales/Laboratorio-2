module FullAdderDeco(input logic [3:0] a, b, 
							input logic cin,
							output logic[6:0] salida, salida2);

							
logic[3:0] s;
logic[3:0] cout;

FullAdder4bits adder (a, b, cin, s, cout);
Deco7Segments deco (.entrada(s), .salida(salida));
Deco7Segments deco2 (.entrada(cout), .salida(salida2));

endmodule


