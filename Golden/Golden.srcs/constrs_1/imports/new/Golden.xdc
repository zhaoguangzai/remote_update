#CLOCKS
#SYSCLK 
set_property PACKAGE_PIN Y18 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property PACKAGE_PIN F20 [get_ports n_reset]
set_property IOSTANDARD LVCMOS33 [get_ports n_reset]

#GPIO LEDs
set_property PACKAGE_PIN F19 [get_ports LED[3]]
set_property IOSTANDARD LVCMOS33 [get_ports LED[3]]
set_property PACKAGE_PIN E21 [get_ports LED[2]]
set_property IOSTANDARD LVCMOS33 [get_ports LED[2]]
set_property PACKAGE_PIN D20 [get_ports LED[1]]
set_property IOSTANDARD LVCMOS33 [get_ports LED[1]]
set_property PACKAGE_PIN C20 [get_ports LED[0]]
set_property IOSTANDARD LVCMOS33 [get_ports LED[0]]


# CFGBVS and SPI mode properties

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
#set_property CONFIG_MODE SPIX1 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
#Compress the bitstream to fit on 128M QSPI of the KC705
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

#BITSTREAM PROPERTIES REQUIRED FOR GOLDEN IMAGE:
set_property BITSTREAM.CONFIG.CONFIGFALLBACK ENABLE [current_design]
set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x0400000 [current_design]
#set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 1 [current_design]
#set_property BITSTREAM.CONFIG.CONFIGFALLBACK ENABLE [current_design]
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x0400000 [current_design]

#(If the SPI flash is equal to or greater than 256 Mb, uncomment the constraint below):
#set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
