
--
------------------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--
------------------------------------------------------------------------------------
--
entity LED_Disp_assign is
    Port (  led_out : out std_logic_vector(7 downto 0);
            clk : in std_logic);
    end LED_Disp_assign;
--
------------------------------------------------------------------------------------
--
-- Start of test architecture
--
architecture Behavioral of LED_Disp_assign is
------------------------------------------------------------------------------------
--
-- Signals used to interface to rotary encoder
--
signal      led_pattern : std_logic_vector(7 downto 0):= "10000000"; --initial value puts one LED on near the middle.
signal cnt : integer :=0;
--
begin                       
                       
 led_display: process(clk, led_pattern)
	begin
		 if clk'event and clk='1' then
		 if (cnt >= 40000000) then
						cnt <= 0;
				led_pattern <=  led_pattern(6 downto 0) &led_pattern(7) ; --rotate LEDs to right
				else
				cnt <= (cnt +1);
				end if;
		 end if;
			led_out <= led_pattern; 
	 end process led_display;
end Behavioral;  