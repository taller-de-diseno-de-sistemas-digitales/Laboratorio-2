library IEEE; use IEEE.STD_LOGIC_1164.all;

entity FullAdder4bits is
	port(a, b: in STD_LOGIC_VECTOR(3 downto 0);
		  cin:  in STD_LOGIC;
		  s:    out STD_LOGIC_VECTOR(3 downto 0);
		  cout: out STD_LOGIC);
end;

architecture struct of FullAdder4bits is
	component FullAdder1bit
		port(a, b, cin: in STD_LOGIC;
			  s, cout:  out STD_LOGIC);
	end component;
	
signal c1, c2, c3: STD_LOGIC;

begin
fulladd0: FullAdder1bit port map(a(0), b(0), cin, s(0), c1);
fulladd1: FullAdder1bit port map(a(1), b(1), c1, s(1), c2);
fulladd2: FullAdder1bit port map(a(2), b(2), c2, s(2), c3);
fulladd3: FullAdder1bit port map(a(3), b(3), c3, s(3), cout);
end;