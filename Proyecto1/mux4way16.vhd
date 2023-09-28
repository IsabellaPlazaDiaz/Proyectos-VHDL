
-- Library and packages
library ieee;
use ieee.std_logic_1164.all;


entity mux4way16 is
	Port(
	   s1 : in std_logic;
		s2 : in std_logic;
		a: in std_logic_vector(15 downto 0);	
		b: in std_logic_vector(15 downto 0);
		c:	in	std_logic_vector(15 downto 0);
		d	:	in	std_logic_vector(15 downto 0);
		o 	: out std_logic_vector(15 downto 0)
	);
end entity;

architecture arch of mux4way16 is
	component mux4way is
		Port(
		
		s1 : in std_logic;
		s2 : in std_logic;
		a: in std_logic;	
		b: in std_logic;
		c:	in	std_logic;
		d	:	in	std_logic;
		o 	: out std_logic
		
		);
	end component;
begin
	mux1: mux4way
		Port map(
		s1 => s1,
		s2 => s2,
		a => a(15),
		b => b(15),
		c => c(15),
		d => d(15),
		o => o(15)
		);
		
	mux2: mux4way
		Port map(
		s1 => s1,
		s2 => s2,
		a => a(14),
		b => b(14),
		c => c(14),
		d => d(14),
		o => o(14)
		);
		
	mux3: mux4way
		Port map(
		s1 => s1,
		s2 => s2,
		a => a(13),
		b => b(13),
		c => c(13),
		d => d(13),
		o => o(13)
		);
		
	mux4: mux4way
		Port map(
		s1 => s1,
		s2 => s2,
		a => a(12),
		b => b(12),
		c => c(12),
		d => d(12),
		o => o(12)
		);
		
	mux5: mux4way
		Port map(
		s1 => s1,
		s2 => s2,
		a => a(11),
		b => b(11),
		c => c(11),
		d => d(11),
		o => o(11)
		);
		
	mux6: mux4way
		Port map(
		s1 => s1,
		s2 => s2,
		a => a(10),
		b => b(10),
		c => c(10),
		d => d(10),
		o => o(10)
		);
		
	mux7: mux4way
		Port map(
		s1 => s1,
		s2 => s2,
		a => a(9),
		b => b(9),
		c => c(9),
		d => d(9),
		o => o(9)
		);
	Mux8: mux4way
		Port map(
		s1 => s1,
		s2 => s2,
		a => a(8),
		b => b(8),
		c => c(8),
		d => d(8),
		o => o(8)
		);
	mux9: mux4way
		Port map(
		s1 => s1,
		s2 => s2,
		a => a(7),
		b => b(7),
		c => c(7),
		d => d(7),
		o => o(7)
		);
	mux10: mux4way
		Port map(
		s1 => s1,
		s2 => s2,
		a => a(6),
		b => b(6),
		c => c(6),
		d => d(6),
		o => o(6)
		);
	mux11: mux4way
		Port map(
	s1 => s1,
		s2 => s2,
		a => a(5),
		b => b(5),
		c => c(5),
		d => d(5),
		o => o(5)
		);
	mux12: mux4way
		Port map(
		s1 => s1,
		s2 => s2,
		a => a(4),
		b => b(4),
		c => c(4),
		d => d(4),
		o => o(4)
		);
	mux13: mux4way
		Port map(
		s1 => s1,
		s2 => s2,
		a => a(3),
		b => b(3),
		c => c(3),
		d => d(3),
		o => o(3)
		);
	mux14: mux4way
		Port map(
		s1 => s1,
		s2 => s2,
		a => a(2),
		b => b(2),
		c => c(2),
		d => d(2),
		o => o(2)
		);
	mux15: mux4way
		Port map(
		s1 => s1,
		s2 => s2,
		a => a(1),
		b => b(1),
		c => c(1),
		d => d(1),
		o => o(1)
		);
		
	mux16: mux4way
		Port map(
		s1 => s1,
		s2 => s2,
		a => a(0),
		b => b(0),
		c => c(0),
		d => d(0),
		o => o(0)
		);

end architecture;