library ieee;
    use ieee.std_logic_1164.all;

entity coquinha is
    port(
        -- clock, m1, m50, reset   : in std_logic;
        -- coca                    : out std_logic



        -- key(0) == clock, 
        -- key(2) == m1,
        -- key(3) == m50, 
        -- key(1) == reset
        LEDG: out std_logic_vector(6 downto 0);
        LEDR: out std_logic_vector(9 downto 0);
        key: in std_logic_vector(3 downto 0);
        hex0: out std_logic_vector(6 downto 0);
        hex1: out std_logic_vector(6 downto 0);
        hex2: out std_logic_vector(6 downto 0);
        hex3: out std_logic_vector(6 downto 0)
    );
end coquinha;

architecture main of coquinha is
    type tpy_total  is (zero, um, cinquenta, um_cinquenta);
    signal total  : tpy_total;
begin
    process ( key(0), key(1) ) is 
    variable moeda : std_logic;
    begin
        -- moeda :=  m1 xor m50
        moeda :=  ( (not key(2) ) xor (not key(3) ) );
        if ( (not key(1)) = '1') then
            total <= zero;
        elsif ( key(0)'event and (not key(0))  = '1') then
				-- LEDR(8) <= '1';
            if (moeda = '1') then
                case total is
                    when zero =>
                        if ( (not key(3)) = '1') then 
                            total <= cinquenta;
                        elsif ((not key(2)) = '1') then
                            total <= um;
                        end if;

                    when cinquenta =>
                        if ( ( not key(3)) = '1') then
                            total <= um;
                        elsif ((not key(2)) = '1') then
                            total <= um_cinquenta;
                        end if;

                    when um =>
                            total <= um_cinquenta;
                            
                    when um_cinquenta =>
                        if ((not key(3)) = '1') then 
                            total <= cinquenta;
                        elsif ((not key(2)) = '1') then
                            total <= um;
                        end if;
                end case;
            end if;
        end if;
    end process;

    process(total)
    begin
        if (total = um_cinquenta) then
            LEDG(0) <= '1';
				ledR(0) <= '0';
				
            hex3(0) <= '1';
				hex3(1) <= '0';
				hex3(2) <= '0';
				hex3(3) <= '1';
				hex3(4) <= '1';
				hex3(5) <= '1';
            hex3(6) <= '1';
            
				hex2(0) <= '1';
            hex2(6) <= '1';
            hex2(3) <= '1';
            hex2(4) <= '1';
            hex2(5) <= '1';
            hex2(1) <= '1';


				
				hex1(0) <= '0';
				hex1(1) <= '1';
				hex1(2) <= '0';
				hex1(3) <= '0';
				hex1(4) <= '1';
				hex1(5) <= '0';
            hex1(6) <= '0';
				
				hex0(0) <= '0';
				hex0(1) <= '0';
				hex0(2) <= '0';
				hex0(3) <= '0';
				hex0(4) <= '0';
				hex0(5) <= '0';
            hex0(6) <= '1';
	
        elsif (total = um) then
				LEDg(0) <= '0';
            LEDR(0) <= '1';
				
            hex3(0) <= '1';
				hex3(1) <= '0';
				hex3(2) <= '0';
				hex3(3) <= '1';
				hex3(4) <= '1';
				hex3(5) <= '1';
            hex3(6) <= '1';
            
				hex2(0) <= '1';
            hex2(6) <= '1';
            hex2(3) <= '1';
            hex2(4) <= '1';
            hex2(5) <= '1';
            hex2(1) <= '1';

				
				hex1(0) <= '0';
				hex1(1) <= '0';
				hex1(2) <= '0';
				hex1(3) <= '0';
				hex1(4) <= '0';
				hex1(5) <= '0';
            hex1(6) <= '1';
				
				hex0(0) <= '0';
				hex0(1) <= '0';
				hex0(2) <= '0';
				hex0(3) <= '0';
				hex0(4) <= '0';
				hex0(5) <= '0';
            hex0(6) <= '1';
         elsif (total = cinquenta) then
            LEDR(0) <= '1';
				LEDg(0) <= '0';

            hex3(0) <= '0';
				hex3(1) <= '0';
				hex3(2) <= '0';
				hex3(3) <= '0';
				hex3(4) <= '0';
				hex3(5) <= '0';
            hex3(6) <= '1';
            
				hex2(0) <= '1';
            hex2(6) <= '1';
            hex2(3) <= '1';
            hex2(4) <= '1';
            hex2(5) <= '1';
            hex2(1) <= '1';

				
				hex1(0) <= '0';
				hex1(1) <= '1';
				hex1(2) <= '0';
				hex1(3) <= '0';
				hex1(4) <= '1';
				hex1(5) <= '0';
            hex1(6) <= '0';
				
				hex0(0) <= '0';
				hex0(1) <= '0';
				hex0(2) <= '0';
				hex0(3) <= '0';
				hex0(4) <= '0';
				hex0(5) <= '0';
            hex0(6) <= '1';
				
        elsif (total = zero) then
				LEDg(0) <= '0';
				LEDr(0) <= '1';
		  
            hex3(0) <= '0';
				hex3(1) <= '0';
				hex3(2) <= '0';
				hex3(3) <= '0';
				hex3(4) <= '0';
				hex3(5) <= '0';
            hex3(6) <= '1';
            
				hex2(0) <= '1';
            hex2(6) <= '1';
            hex2(3) <= '1';
            hex2(4) <= '1';
            hex2(5) <= '1';
            hex2(1) <= '1';

				
				hex1(0) <= '0';
				hex1(1) <= '0';
				hex1(2) <= '0';
				hex1(3) <= '0';
				hex1(4) <= '0';
				hex1(5) <= '0';
            hex1(6) <= '1';
				
				hex0(0) <= '0';
				hex0(1) <= '0';
				hex0(2) <= '0';
				hex0(3) <= '0';
				hex0(4) <= '0';
				hex0(5) <= '0';
            hex0(6) <= '1';
				
		  else LEDg(0) <= '0';	
		  
        end if;
    end process;
end architecture;