library IEEE; use IEEE.STD_LOGIC_1164.all;

entity FullAdder4bits_test is 
end;

architecture sim of FullAdder4bits_test is
	component FullAdder4bits
		port(a, b: in STD_LOGIC_VECTOR(3 downto 0);
			  cin:  in STD_LOGIC;
			  s:    out STD_LOGIC_VECTOR(3 downto 0);
		     cout: out STD_LOGIC);
	end component;
	signal cin, cout: STD_LOGIC;
	signal a, b, s: STD_LOGIC_VECTOR(3 downto 0);

begin
	
	dut: FullAdder4bits port map(a, b, cin, s, cout);
	
	process begin
	   cin <= '0';
		a <= "0010"; b <= "0010"; wait for 10 ns;
		a <= "0100"; b <= "0100"; wait for 10 ns;
		a <= "0001"; b <= "0001"; wait for 10 ns;
		a <= "1000"; b <= "0001"; wait for 10 ns;
		wait for 40 ns; 
	end process;
end;