library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom_4x4_async is
port(clock    : in std_logic;
     address  : in std_logic_vector(1  downto 0);
     data_out : out std_logic_vector(3 downto 0)
); 
end entity;

architecture rom_4x4_async_arch of rom_4x4_async is 

type ROM_type is array (0 to 3 ) of std_logic_vector(3 downto 0);
constant ROM : ROM_type := (0  =>  "1110",
                            1  =>  "0010",
									 2  =>  "1111",
									 3  =>  "0100");
begin
MEMORY  : process (clock)

begin 
if (clock'event and clock = '1') then
data_out  <= ROM ( to_integer(unsigned(address)));
end if;
end process;
end architecture;
								