library IEEE; use IEEE.STD_LOGIC_1164.all;
entity FullAdder1bit is 
	port(a, b, cin: in STD_LOGIC;
		  s, cout: out STD_LOGIC);	
end;

architecture synth of FullAdder1bit is
	signal p,g: STD_LOGIC;
	
begin
	p <= a xor b;
	g <= a and b;
	s <= p xor cin;
	cout <= g or (p and cin);
end;

