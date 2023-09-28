library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rw_4x4_async is
port(address  : in std_logic_vector(1  downto 0);
     data_in  : in std_logic_vector(3 downto 0);
     WE   : in std_logic;
     data_out : out std_logic_vector(3 downto 0)
	 
); 
end entity;

architecture rw_4x4_async_arch of rw_4x4_async is 

type RW_type is array (0 to 3 ) of std_logic_vector(3 downto 0);
signal RW  : RW_type;
begin
MEMORY  : process (address, WE, data_in)

begin 
if (WE = '1') then
RW(to_integer(unsigned(address))) <= data_in;
else
data_out  <= RW(to_integer(unsigned(address)));
end if;
end process;
end architecture;