
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Top_MultiBoot_Module_A is
Port ( 	    CLK_IN1_P         : in     std_logic;
             CLK_IN1_N         : in     std_logic; --- Differential 200 Mhz clock input
			    LED_REVXX 	: out std_logic_vector(7 downto 0)		--- Free running LED from left to right or right to left. All Revision LED patterns are different.
		);
end  Top_MultiBoot_Module_A;

architecture Behavioral of  Top_MultiBoot_Module_A is

------ Differential Clock input 200 MHz & converting to single ended by IBUFDS-------
component clk_200MHZ
port
 (-- Clock in ports
  CLK_IN1_P         : in     std_logic;
  CLK_IN1_N         : in     std_logic;
  -- Clock out ports
  CLK_OUT1          : out    std_logic
 );
end component;
---- LED pattern output on 1.5Sec delay ----
	COMPONENT LED_Display
	PORT(
		clk : IN std_logic;          
		led_out : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

--- Signals Declaration ------
	signal CLK_IN, CLK_Single	: std_logic;
	
---OUTPUT Status ------
	signal LED_REVXX_TMP 	: std_logic_vector(7 downto 0) := "00000000";
begin
------- Instantiation of all modules  -------

------Differential Clock input 200Mhz --
Inst_clk_200MHZ : clk_200MHZ
  port map
   (-- Clock in ports
    CLK_IN1_P => CLK_IN1_P,
    CLK_IN1_N => CLK_IN1_N,
   
    CLK_OUT1 => CLK_Single);

-- LED Status --
	Inst_LED_Display: LED_Display PORT MAP(
		led_out => LED_REVXX,
		clk => CLK_Single
	);




end Behavioral;