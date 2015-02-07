
--VGA controller
library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity vgacon is
  generic (
   
    NUM_HORZ_PIXELS : natural := 128;  
    NUM_VERT_PIXELS : natural := 96);  
  
  port (
    clk27M, rstn              : in  std_logic;
	rgb						: in  std_logic_vector(2 downto 0);
  
    char_in                   : in  unsigned(0 downto 0);
    vga_clk                   : buffer std_logic;      
    red, green, blue          : out std_logic_vector(3 downto 0);
    hsync, vsync              : out std_logic);
end vgacon;

architecture behav of vgacon is
  
  signal h_count, h_count_d : integer range 0 to 799;  --delayed counter for signal output
  signal v_count, v_count_d : integer range 0 to 524;  --native resolution is 640*480. This value includes front and back porch

  signal read_addr : integer range 0 to NUM_HORZ_PIXELS * NUM_VERT_PIXELS * 10 - 1; --address of the seperatre VGA memory
  signal h_drawarea, v_drawarea, drawarea : std_logic;
  signal data_out : std_logic_vector(2 downto 0);
  signal charint: integer range 0 to 1;
begin  

 
  divider: work.vga_pll port map (clk27M, vga_clk);


  vgamem : work.vga_ram
  generic map (
    MEMSIZE => NUM_HORZ_PIXELS * NUM_VERT_PIXELS * 2) --two different patterns with the same resolution
  port map (
    read_clk       => vga_clk,
    
    read_address   => read_addr,
   
    
    data_out       => data_out
    );


  horz_counter: process (vga_clk, rstn)
  begin  
    if rstn = '1' then                  
      h_count <= 0;
      h_count_d <= 0;
    elsif vga_clk'event and vga_clk = '1' then  
      h_count_d <= h_count;             
      if h_count = 799 then
        h_count <= 0;
      else
        h_count <= h_count + 1;
      end if;
    end if;
  end process horz_counter;


  horz_sync: process (h_count_d)
  begin 
    if h_count_d < 640 then
      h_drawarea <= '1';
    else
      h_drawarea <= '0';
    end if;
  end process horz_sync;


  vert_counter: process (vga_clk, rstn)
  begin  
    if rstn = '1' then              
      v_count <= 0;
      v_count_d <= 0;
    elsif vga_clk'event and vga_clk = '1' then  
      v_count_d <= v_count;             
      if h_count = 699 then
        if v_count = 524 then
          v_count <= 0;
        else
          v_count <= v_count + 1;  
        end if;          
      end if;
    end if;
  end process vert_counter;


  vert_sync: process (v_count_d)
  begin 
    if v_count_d < 480 then
      v_drawarea <= '1';
    else
      v_drawarea <= '0';
    end if;
  end process vert_sync;

  sync: process (v_count_d, h_count_d)
  begin 
    if (h_count_d >= 659) and (h_count_d <= 755) then  --as per timing specs of VGA
      hsync <= '0';
    else
      hsync <= '1';
    end if;
    if (v_count_d >= 493) and (v_count_d <= 494) then
      vsync <= '0';
    else
      vsync <= '1';
    end if;
  end process sync;


  drawarea <= v_drawarea and h_drawarea;


  gen_r_addr: process (h_count, v_count)
  begin 
	charint <= CONV_INTEGER(char_in); --choose pattern of display
    read_addr <= (h_count / (640 / NUM_HORZ_PIXELS) + ((v_count/(480 / NUM_VERT_PIXELS))* NUM_HORZ_PIXELS) + (NUM_HORZ_PIXELS * NUM_VERT_PIXELS * charint));    
  end process gen_r_addr;


  red   <= (others => data_out(2) and drawarea and rgb(0)); --change color of display
  green <= (others => data_out(1) and drawarea and rgb(1));
  blue  <= (others => data_out(0) and drawarea and rgb(2));

end behav;




--RAM for storing pixel patterns

library ieee;
use ieee.std_logic_1164.all;

entity vga_ram is

  generic (
    MEMSIZE : natural := 24576);  
  port (
    read_clk        			: in  std_logic;  
    
    read_address 				: in  integer range 0 to MEMSIZE - 1;  
    
    data_out                    : out std_logic_vector(2 downto 0));

end vga_ram;

architecture behav of vga_ram is

  subtype addr is integer range 0 to MEMSIZE - 1;
  type mem is array (addr) of std_logic_vector(2 downto 0);
  signal ram_block : mem;

  attribute ramstyle : string;
  attribute ramstyle of vga_ram : entity is "no_rw_check";
  attribute ram_init_file : string;
  attribute ram_init_file of ram_block : signal is "vga_mem.mif";

begin  


  read: process (read_clk)
  begin 
    if read_clk'event and read_clk = '1' then  -- rising clock edge
      data_out <= ram_block(read_address);      
    end if;
  end process read;


  

end behav;


-- 25.2 MHz clock  for VGA controller

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.all;

ENTITY vga_pll IS
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC 
	);
END vga_pll;


ARCHITECTURE SYN OF vga_pll IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC ;
	SIGNAL sub_wire2	: STD_LOGIC ;
	SIGNAL sub_wire3	: STD_LOGIC_VECTOR (1 DOWNTO 0);
	SIGNAL sub_wire4_bv	: BIT_VECTOR (0 DOWNTO 0);
	SIGNAL sub_wire4	: STD_LOGIC_VECTOR (0 DOWNTO 0);



	COMPONENT altpll
	GENERIC (
		clk0_divide_by		: NATURAL;
		clk0_duty_cycle		: NATURAL;
		clk0_multiply_by		: NATURAL;
		clk0_phase_shift		: STRING;
		compensate_clock		: STRING;
		inclk0_input_frequency		: NATURAL;
		intended_device_family		: STRING;
		lpm_hint		: STRING;
		lpm_type		: STRING;
		operation_mode		: STRING;
		port_activeclock		: STRING;
		port_areset		: STRING;
		port_clkbad0		: STRING;
		port_clkbad1		: STRING;
		port_clkloss		: STRING;
		port_clkswitch		: STRING;
		port_configupdate		: STRING;
		port_fbin		: STRING;
		port_inclk0		: STRING;
		port_inclk1		: STRING;
		port_locked		: STRING;
		port_pfdena		: STRING;
		port_phasecounterselect		: STRING;
		port_phasedone		: STRING;
		port_phasestep		: STRING;
		port_phaseupdown		: STRING;
		port_pllena		: STRING;
		port_scanaclr		: STRING;
		port_scanclk		: STRING;
		port_scanclkena		: STRING;
		port_scandata		: STRING;
		port_scandataout		: STRING;
		port_scandone		: STRING;
		port_scanread		: STRING;
		port_scanwrite		: STRING;
		port_clk0		: STRING;
		port_clk1		: STRING;
		port_clk2		: STRING;
		port_clk3		: STRING;
		port_clk4		: STRING;
		port_clk5		: STRING;
		port_clkena0		: STRING;
		port_clkena1		: STRING;
		port_clkena2		: STRING;
		port_clkena3		: STRING;
		port_clkena4		: STRING;
		port_clkena5		: STRING;
		port_extclk0		: STRING;
		port_extclk1		: STRING;
		port_extclk2		: STRING;
		port_extclk3		: STRING
	);
	PORT (
			inclk	: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			clk	: OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	sub_wire4_bv(0 DOWNTO 0) <= "0";
	sub_wire4    <= To_stdlogicvector(sub_wire4_bv);
	sub_wire1    <= sub_wire0(0);
	c0    <= sub_wire1;
	sub_wire2    <= inclk0;
	sub_wire3    <= sub_wire4(0 DOWNTO 0) & sub_wire2;

	altpll_component : altpll
	GENERIC MAP (
		clk0_divide_by => 15,
		clk0_duty_cycle => 50,
		clk0_multiply_by => 14,
		clk0_phase_shift => "0",
		compensate_clock => "CLK0",
		inclk0_input_frequency => 37037,
		intended_device_family => "Cyclone II",
		lpm_hint => "CBX_MODULE_PREFIX=vga_pll",
		lpm_type => "altpll",
		operation_mode => "NORMAL",
		port_activeclock => "PORT_UNUSED",
		port_areset => "PORT_UNUSED",
		port_clkbad0 => "PORT_UNUSED",
		port_clkbad1 => "PORT_UNUSED",
		port_clkloss => "PORT_UNUSED",
		port_clkswitch => "PORT_UNUSED",
		port_configupdate => "PORT_UNUSED",
		port_fbin => "PORT_UNUSED",
		port_inclk0 => "PORT_USED",
		port_inclk1 => "PORT_UNUSED",
		port_locked => "PORT_UNUSED",
		port_pfdena => "PORT_UNUSED",
		port_phasecounterselect => "PORT_UNUSED",
		port_phasedone => "PORT_UNUSED",
		port_phasestep => "PORT_UNUSED",
		port_phaseupdown => "PORT_UNUSED",
		port_pllena => "PORT_UNUSED",
		port_scanaclr => "PORT_UNUSED",
		port_scanclk => "PORT_UNUSED",
		port_scanclkena => "PORT_UNUSED",
		port_scandata => "PORT_UNUSED",
		port_scandataout => "PORT_UNUSED",
		port_scandone => "PORT_UNUSED",
		port_scanread => "PORT_UNUSED",
		port_scanwrite => "PORT_UNUSED",
		port_clk0 => "PORT_USED",
		port_clk1 => "PORT_UNUSED",
		port_clk2 => "PORT_UNUSED",
		port_clk3 => "PORT_UNUSED",
		port_clk4 => "PORT_UNUSED",
		port_clk5 => "PORT_UNUSED",
		port_clkena0 => "PORT_UNUSED",
		port_clkena1 => "PORT_UNUSED",
		port_clkena2 => "PORT_UNUSED",
		port_clkena3 => "PORT_UNUSED",
		port_clkena4 => "PORT_UNUSED",
		port_clkena5 => "PORT_UNUSED",
		port_extclk0 => "PORT_UNUSED",
		port_extclk1 => "PORT_UNUSED",
		port_extclk2 => "PORT_UNUSED",
		port_extclk3 => "PORT_UNUSED"
	)
	PORT MAP (
		inclk => sub_wire3,
		clk => sub_wire0
	);



END SYN;
