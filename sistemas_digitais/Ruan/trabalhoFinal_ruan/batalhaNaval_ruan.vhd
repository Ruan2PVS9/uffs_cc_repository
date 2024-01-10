library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity batalhaNaval_ruan is
    port(
        SW: in std_logic_vector(9 downto 0);
        key: in std_logic_vector(3 downto 0);

        LEDG: out std_logic_vector(7 downto 0);
        LEDR: out std_logic_vector(9 downto 0);

        hex0: out std_logic_vector(0 to 6);
        hex1: out std_logic_vector(0 to 6);
        hex2: out std_logic_vector(0 to 6);
        hex3: out std_logic_vector(0 to 6)
        
    );
end batalhaNaval_ruan;

architecture main of batalhaNaval_ruan is

    type estado is (start,set, shot,win,lost);

    signal state : estado := start;

    function codificar(decodificado : std_logic_vector(3 downto 0)) return std_logic_vector is
        variable A, B, C, D : std_logic;
        variable resultado : std_logic_vector(3 downto 0);
    begin
        A := decodificado(3);
        B := decodificado(2);
        C := decodificado(1);
        D := decodificado(0);

        -- a = ~Bâ‹…~Câ‹…~D + ~Aâ‹…~Bâ‹…Câ‹…D + ~Aâ‹…Bâ‹…~Câ‹…D + Bâ‹…Câ‹…~D + Aâ‹…~D
        resultado(3) := (   (not B and not C and not D) or
                            (not A and not B and C and D) or 
                            (not A and b and not C and D ) or 
                            (B and C and not D) or 
                            (A and not D)
                        );

        -- b = ~Aâ‹…~Bâ‹…D + ~Aâ‹…C + ~Bâ‹…C + Câ‹…~D
        resultado(2) := (   (not A and not B and D) or 
                            (not A and C) or 
                            (not B and C) or 
                            (c and not D) 
                        );
        
        -- c = ~Aâ‹…~D + ~Bâ‹…~D + Aâ‹…Câ‹…D
        resultado(1) := (   (not A and not D) or 
                            (not B and not D) or 
                            (A and C and D) 
                        );

        -- d = ~Aâ‹…~Bâ‹…C + ~Aâ‹…Câ‹…D + Aâ‹…~Bâ‹…~D + Aâ‹…~Câ‹…~D + Aâ‹…Bâ‹…~C + Bâ‹…Câ‹…D
        resultado(0) := (   (not A and not B and C) or 
                            (not A and C and D) or 
                            (A and not B and not D) or 
                            (A and not C and not D) or 
                            (A and B and not C) or 
                            (B and C and D) 
                        );

        return resultado;
    end codificar;

    function decodificar(codificado : std_logic_vector(3 downto 0)) return std_logic_vector is
        variable a, b, c, d : std_logic;
        variable resultado : std_logic_vector(3 downto 0);
    begin
        a := codificado(3);
        b := codificado(2);
        c := codificado(1);
        d := codificado(0);
        -- A = ~aâ‹…~bâ‹…~c + ~bâ‹…d + ~aâ‹…bâ‹…câ‹…~d + aâ‹…bâ‹…~câ‹…~d + aâ‹…câ‹…d
        resultado(3) := (   (not a and not b and not c) or
                            (not b and d) or
                            (not a and b and c and not d) or
                            (a and b and not c and not d) or
                            (a and c and d) 
                        );

        -- B = ~aâ‹…~bâ‹…c + ~aâ‹…~câ‹…d + aâ‹…~bâ‹…~c + aâ‹…bâ‹…~d
        resultado(2) := (   (not a and not b and c) or
                            (not a and not c and d) or
                            (a and not b and not c) or
                            (a and b and not d)
                        );

        -- C = ~aâ‹…câ‹…d + bâ‹…d + bâ‹…c
        resultado(1) := (   (not a and c and d) or
                            (b and d) or
                            (b and c) 
                        );

        -- D = ~aâ‹…~bâ‹…d + ~bâ‹…~câ‹…~d + ~aâ‹…bâ‹…~d + bâ‹…~câ‹…d
        resultado(0) := (   (not a and not b and d) or
                            (not b and not c and not d) or
                            (not a and b and not d) or
                            (b and not c and d)
                        );

        return resultado;
    end decodificar;

begin

    process(key(0), key(1))

    variable cont_erros : std_logic_vector(2 downto 0) := "000";
    variable cont_acertos : std_logic_vector(2 downto 0) := "000";
    variable cont_disparos : std_logic_vector(3 downto 0) := "0000";
    -- '-' para representar um estado nÃ£o inicializado.
    variable nav1, nav2_casa1, nav2_casa2 : std_logic_vector(3 downto 0) := "UUUU";
    variable decod_disp, cod_disp : std_logic_vector(3 downto 0);
    variable decod_casa_1, decod_casa_2 : std_logic_vector(3 downto 0) := "UUUU";
    variable somar3 :std_logic_vector(3 downto 0) ;
    variable somar2 :std_logic_vector(2 downto 0) ;

    begin

    if (key(1) = '0') then
        
        cont_erros := "000";
        cont_acertos := "000";
        cont_disparos := "0000";

        nav1 := "UUUU";
        nav2_casa1 := "UUUU";
        nav2_casa2 := "UUUU";

        ledr <= "0000111111";
        ledg <= "00000000";

        hex3 <= "0000000";
        hex2 <= "0000000";
        hex1 <= "0000000";
        hex0 <= "0000000";

        state <= start;
    elsif (key(0)'EVENT and key(0) = '0') then
        if (state = start) then
                 nav1 := "UUUU";
            nav2_casa1 := "UUUU";
            nav2_casa2 := "UUUU";

            state <= set;        
        elsif (state = set) then
                hex3 <= "0100100";
                hex2 <= "0110000";
                hex1 <= "0001111";
                hex0 <= "0000000";
           
            if (sw(4) = '0' and key(2) = '0') then
                -- set1 = 
                -- hex <= "0123456"

                hex3 <= "0100100";
                hex2 <= "0110000";
                hex1 <= "0001111";
                hex0 <= "1001111";

                nav1(0) := sw(0);
                nav1(1) := sw(1);
                nav1(2) := sw(2);
                nav1(3) := sw(3);
                ledg(0) <= '1';
            elsif (sw(4) = '1' and key(2) = '0') then
                -- set2 = 
                -- hex <= "0123456"

                hex3 <= "0100100";
                hex2 <= "0110000";
                hex1 <= "0001111";
                hex0 <= "0010010";

                nav2_casa1(0) := sw(0);
                nav2_casa1(1) := sw(1);
                nav2_casa1(2) := sw(2);
                nav2_casa1(3) := sw(3);
                ledg(1) <= '1';


                decod_casa_1 := decodificar(nav2_casa1);
                if (sw(6) = '0') then
                    if (decod_casa_1 = "0011") then
                        decod_casa_2 := "0010";
                    elsif (decod_casa_1 = "0111") then
                        decod_casa_2 := "0110";
                    elsif (decod_casa_1 = "1011") then
                        decod_casa_2 := "1010";
                    elsif (decod_casa_1 = "1111") then
                        decod_casa_2 := "1110";
                    else
                        somar3 := "0001";
                        decod_casa_2 := std_logic_vector(unsigned(decod_casa_1) + unsigned(somar3));
                    end if ;
                elsif (sw(6) = '1') then
                    if (decod_casa_1 = "1100") then
                        decod_casa_2 := "1000";
                    elsif (decod_casa_1 = "1101") then
                        decod_casa_2 := "1001";
                    elsif (decod_casa_1 = "1110") then
                        decod_casa_2 := "1010";
                    elsif (decod_casa_1 = "1111") then
                        decod_casa_2 := "1011";
                    else
                        somar3 := "0100";
                        decod_casa_2 := std_logic_vector(unsigned(decod_casa_1) + unsigned(somar3));
                    end if ;
                end if;
                nav2_casa2 := codificar(decod_casa_2);
                ledg(2) <= '1';
            end if;

            if (((nav1 /= nav2_casa1) and (nav1 /= nav2_casa2)) and (sw(5) = '1')) then
                state <= shot;
            end if;
           
            
        elsif (state = shot) then
            -- disX = 
            -- hex <= "0123456"    
            -- hex0 <= "0123456";
            hex3 <= "0000001";
            hex2 <= "1111001";
            hex1 <= "0100100";
            case cont_disparos is
                when "0000" =>
                    hex0 <= "0000001";
                when "0001" =>
                    hex0 <= "1001111";
                when "0010" =>
                    hex0 <= "0010010";
                when "0011" =>
                    hex0 <= "0000110";
                when "0100" =>
                    hex0 <= "1001100";
                when "0101" =>
                    hex0 <= "0100100";
                when "0110" =>
                    hex0 <= "0100000";
                when "0111" =>
                    hex0 <= "0001111";
                when "1000" =>
                    hex0 <= "0000000";
                when "1001" =>
                    hex0 <= "0000100";
                when others =>
                    state <= win;
            end case;

            decod_disp(0) := sw(0);
            decod_disp(1) := sw(1);
            decod_disp(2) := sw(2);
            decod_disp(3) := sw(3);
            if (key(2) = '0') then
                somar2 :="001";
                cont_erros := std_logic_vector(unsigned(cont_erros) + unsigned(somar2));
                cod_disp := codificar(decod_disp);
                somar3 := "0001";
                cont_disparos := std_logic_vector(unsigned(cont_disparos) + unsigned(somar3));

                if (cod_disp = nav1) then
                    ledg(0) <= '0';
                    cont_acertos(0) := '1';
                    if (cont_erros = "110") then
                        cont_erros := std_logic_vector(unsigned(cont_erros) - unsigned(somar2));
                    end if;
                elsif (cod_disp = nav2_casa1) then
                    ledg(1) <= '0';
                    cont_acertos(1) := '1';
                    if (cont_erros = "110") then
                        cont_erros := std_logic_vector(unsigned(cont_erros) - unsigned(somar2));
                    end if;
                elsif (cod_disp = nav2_casa2) then
                    ledg(2) <= '0';
                    cont_acertos(2) := '1';
                    if (cont_erros = "110") then
                        cont_erros := std_logic_vector(unsigned(cont_erros) - unsigned(somar2));
                    end if;
                end if;

                case cont_erros is
                    when "001" =>
                        ledr(5) <= '0';
                    when "010" =>
                        ledr(4) <= '0';
                    when "011" =>
                        ledr(3) <= '0';
                    when "100" =>
                        ledr(2) <= '0';
                    when "101" =>
                        ledr(1) <= '0';
                    when "110" =>
                        ledr(0) <= '0';
                        state <= win;
                    when others =>
                end case;
                
            end if;

            if (cont_acertos = "111") then
                state <= lost;
            elsif (cont_erros = "110") then
                state <= win;
            end if ;
        elsif (state = win) then
            ledg <= "11111111";
            ledr <= "0000000000";
        elsif (state = lost) then
            ledg <= "00000000";
            ledr <= "1111111111";
        end if;
    end if ;
    end process;

end architecture;