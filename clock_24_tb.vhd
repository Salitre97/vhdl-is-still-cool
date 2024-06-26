LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Clock_24h_tb IS
END Clock_24h_tb;

ARCHITECTURE behavior OF Clock_24h_tb IS 

    COMPONENT Clock_24h
    PORT(
         clk : IN std_logic;
         second_7seg_1 : OUT std_logic_vector(6 downto 0);
         second_7seg_2 : OUT std_logic_vector(6 downto 0);
         minute_7seg_1 : OUT std_logic_vector(6 downto 0);
         minute_7seg_2 : OUT std_logic_vector(6 downto 0);
         hour_7seg_1 : OUT std_logic_vector(6 downto 0);
         hour_7seg_2 : OUT std_logic_vector(6 downto 0)
    );
    END COMPONENT;

   signal clk : std_logic := '0';
   signal second_7seg_1 : std_logic_vector(6 downto 0);
   signal second_7seg_2 : std_logic_vector(6 downto 0);
   signal minute_7seg_1 : std_logic_vector(6 downto 0);
   signal minute_7seg_2 : std_logic_vector(6 downto 0);
   signal hour_7seg_1 : std_logic_vector(6 downto 0);
   signal hour_7seg_2 : std_logic_vector(6 downto 0);

BEGIN
    uut: Clock_24h PORT MAP (
          clk => clk,
          second_7seg_1 => second_7seg_1,
          second_7seg_2 => second_7seg_2,
          minute_7seg_1 => minute_7seg_1,
          minute_7seg_2 => minute_7seg_2,
          hour_7seg_1 => hour_7seg_1,
          hour_7seg_2 => hour_7seg_2
    );

    clk_process: process
    begin
        clk <= '0';
        wait for 50ns; -- Correct for a 1Hz clock
        clk <= '1';
        wait for 50ns;
    end process;

--    test_process: process
--    begin
--        -- Adjust as needed to simulate critical points or transitions
--        wait for 10 sec; -- Example duration to observe some transitions
--        wait; -- Hold simulation here to observe the final state in waveform.
--    end process;

END behavior;
