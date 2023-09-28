-- Library and packages
library ieee;
use ieee.std_logic_1164.all;

-- sum a + b + c  

entity Add16 is
	Port(
		a 	   : in std_logic_vector(15 downto 0);
		b    	: in std_logic_vector(15 downto 0);
		c     : in std_logic_vector(15 downto 0);	
		sum   : out std_logic_vector(15 downto 0);
		carry : out std_logic_vector(15 downto 0)
	);
end entity;

architecture arch of Add16 is
	signal sum1 : std_logic_vector(15 downto 0);
	signal carry1 : std_logic_vector(15 downto 0);
	signal carry2 : std_logic_vector(15 downto 0);
	
	component Inc16 is
		Port(
			a	   :	in 	std_logic_vector(15 downto 0);
			b	   :	in		std_logic_vector(15 downto 0);
			sum   :	out 	std_logic_vector(15 downto 0);
			carry	:	out	std_logic_vector(15 downto 0)
		);
	end component;
begin
	Inc161: Inc16
		Port map(
			a(0)     => a(0),
			a(1)     => a(1),
			a(2)     => a(2),
			a(3)     => a(3),
			a(4)     => a(4),
			a(5)     => a(5),
			a(6)     => a(6),
			a(7)     => a(7),
			a(8)     => a(8),
			a(9)     => a(9),
			a(10)     => a(10),
			a(11)     => a(11),
			a(12)     => a(12),
			a(13)     => a(13),
			a(14)     => a(14),
			a(15)     => a(15),
			
			b(0)     => b(0),
			b(1)     => b(1),
			b(2)     => b(2),
			b(3)     => b(3),
			b(4)     => b(4),
			b(5)     => b(5),
			b(6)     => b(6),
			b(7)     => b(7),
			b(8)     => b(8),
			b(9)     => b(9),
			b(10)     => b(10),
			b(11)     => b(11),
			b(12)     => b(12),
			b(13)     => b(13),
			b(14)     => b(14),
			b(15)     => b(15),
			
			sum(0)     => sum1(0),
			sum(1)     => sum1(1),
			sum(2)     => sum1(2),
			sum(3)     => sum1(3),
			sum(4)     => sum1(4),
			sum(5)     => sum1(5),
			sum(6)     => sum1(6),
			sum(7)     => sum1(7),
			sum(8)     => sum1(8),
			sum(9)     => sum1(9),
			sum(10)     => sum1(10),
			sum(11)     => sum1(11),
			sum(12)     => sum1(12),
			sum(13)     => sum1(13),
			sum(14)     => sum1(14),
			sum(15)     => sum1(15),
			
			carry(0)     => carry1(0),
			carry(1)     => carry1(1),
			carry(2)     => carry1(2),
			carry(3)     => carry1(3),
			carry(4)     => carry1(4),
			carry(5)     => carry1(5),
			carry(6)     => carry1(6),
			carry(7)     => carry1(7),
			carry(8)     => carry1(8),
			carry(9)     => carry1(9),
			carry(10)     => carry1(10),
			carry(11)     => carry1(11),
			carry(12)     => carry1(12),
			carry(13)     => carry1(13),
			carry(14)     => carry1(14),
			carry(15)     => carry1(15)
			);
   Inc162: Inc16
		Port map(
			a(0)     => sum1(0),
			a(1)     => sum1(1),
			a(2)     => sum1(2),
			a(3)     => sum1(3),
			a(4)     => sum1(4),
			a(5)     => sum1(5),
			a(6)     => sum1(6),
			a(7)     => sum1(7),
			a(8)     => sum1(8),
			a(9)     => sum1(9),
			a(10)     => sum1(10),
			a(11)     => sum1(11),
			a(12)     => sum1(12),
			a(13)     => sum1(13),
			a(14)     => sum1(14),
			a(15)     => sum1(15),
			
			b(0)     => c(0),
			b(1)     => c(1),
			b(2)     => c(2),
			b(3)     => c(3),
			b(4)     => c(4),
			b(5)     => c(5),
			b(6)     => c(6),
			b(7)     => c(7),
			b(8)     => c(8),
			b(9)     => c(9),
			b(10)     => c(10),
			b(11)     => c(11),
			b(12)     => c(12),
			b(13)     => c(13),
			b(14)     => c(14),
			b(15)     => c(15),
			
			sum(0)     => sum(0),
			sum(1)     => sum(1),
			sum(2)     => sum(2),
			sum(3)     => sum(3),
			sum(4)     => sum(4),
			sum(5)     => sum(5),
			sum(6)     => sum(6),
			sum(7)     => sum(7),
			sum(8)     => sum(8),
			sum(9)     => sum(9),
			sum(10)     => sum(10),
			sum(11)     => sum(11),
			sum(12)     => sum(12),
			sum(13)     => sum(13),
			sum(14)     => sum(14),
			sum(15)     => sum(15),
			
			carry(0)     => carry2(0),
			carry(1)     => carry2(1),
			carry(2)     => carry2(2),
			carry(3)     => carry2(3),
			carry(4)     => carry2(4),
			carry(5)     => carry2(5),
			carry(6)     => carry2(6),
			carry(7)     => carry2(7),
			carry(8)     => carry2(8),
			carry(9)     => carry2(9),
			carry(10)     => carry2(10),
			carry(11)     => carry2(11),
			carry(12)     => carry2(12),
			carry(13)     => carry2(13),
			carry(14)     => carry2(14),
			carry(15)     => carry2(15)
			);
		carry(0) <= (carry1(0)) or (carry2(0)),
		carry(1) <= (carry1(1)) or (carry2(1)),
		carry(2) <= (carry1(2)) or (carry2(2)),
		carry(3) <= (carry1(3)) or (carry2(3)),
		carry(4) <= (carry1(4)) or (carry2(4)),
		carry(5) <= (carry1(5)) or (carry2(5)),
		carry(6) <= (carry1(6)) or (carry2(6)),
		carry(7) <= (carry1(7)) or (carry2(7)),
		carry(8) <= (carry1(8)) or (carry2(8)),
		carry(9) <= (carry1(9)) or (carry2(9)),
		carry(10) <= (carry1(10)) or (carry2(10)),
		carry(11) <= (carry1(11)) or (carry2(11)),
		carry(12) <= (carry1(12)) or (carry2(12)),
		carry(13) <= (carry1(13)) or (carry2(13)),
		carry(14) <= (carry1(14)) or (carry2(14)),
		carry(15) <= (carry1(15)) or (carry2(15));
end architecture;