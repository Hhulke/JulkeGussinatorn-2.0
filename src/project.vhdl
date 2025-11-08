library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.NUMERIC_STD.all;

entity tt_um_julke_gussinatorn2 is
  port (
    ui_in   : in  std_logic_vector(7 downto 0);
    uo_out  : out std_logic_vector(7 downto 0);
    uio_in  : in  std_logic_vector(7 downto 0);
    uio_out : out std_logic_vector(7 downto 0);
    uio_oe  : out std_logic_vector(7 downto 0);
    ena     : in  std_logic;
    clk     : in  std_logic;
    rst_n   : in  std_logic
  );
end entity;

architecture Roxen of tt_um_julke_gussinatorn2 is

  type rom_type is array (31 downto 0) of std_logic_vector(7 downto 0);
  signal ROM_Mrse : rom_type := (
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000"
  );

  -- INSIGNAL:
  -- 0: Kort morse
  -- 1: Lång morse
  -- 2: Skippa
  -- 2: Spela upp från minne
  -- 3: Kryptera
  -- 4: Dekryptera
  signal ASCELL_Mrse   : std_logic_vector(1 downto 0) := "00";
  signal CELL_Mrse     : std_logic_vector(1 downto 0) := "00";
  signal ui_in_old     : std_logic_vector(5 downto 0) := "000000";
  signal ui_in_sync    : std_logic_vector(5 downto 0) := "000000";
  signal SR_Mrse       : std_logic_vector(7 downto 0) := "00000000";
  signal ROM_I_Mrse    : std_logic_vector(7 downto 0) := "00000000";
  signal I_SR_Mrse     : unsigned(2 downto 0)         := "000";
  signal FLUSH_SR_Mrse : std_logic                    := '0';
  signal I_ROM_Mrse    : integer range 0 to 31        := 0;

  signal TIME_Mrse                    : integer range 0 to 8191      := 0;
  signal STATE_Mrse                   : std_logic_vector(2 downto 0) := "000";
  signal write_normal, write_inverted : std_logic                    := '0';
  signal write_value                  : std_logic_vector(7 downto 0) := "00000000";
  signal inc_SR                       : std_logic                    := '0';
  signal inc_ROM                      : std_logic                    := '0';

begin
  uio_out <= "00000000";
  uio_oe  <= "00000000";

  ui_in_sync <= ui_in(5 downto 0) and not ui_in_old;

  ROM_I_Mrse <= ROM_Mrse(I_ROM_Mrse);

  process (ui_in_sync, FLUSH_SR_Mrse)
  begin
    --Tilldela morsekod-värde;
    if ((ui_in_sync(0) = '1') or (ui_in_sync(1) = '1')) and (not(FLUSH_SR_Mrse = '1')) then
      ASCELL_Mrse <= ui_in_sync(1 downto 0);
    else
      ASCELL_Mrse <= "00";
    end if;
  end process;

  write_normal   <= '1' when (STATE_Mrse = "000" and I_SR_Mrse = 4) else '0';
  write_inverted <= '1' when ((STATE_Mrse = "101") or (STATE_Mrse = "110")) and I_ROM_Mrse < 31 and SR_Mrse = ROM_I_Mrse else '0';
  inc_ROM <= '1' when ((write_inverted = '1') or (write_normal = '1')) or (STATE_Mrse = "001" and I_SR_Mrse = 3) else '0';
  write_value    <= not SR_Mrse when write_inverted = '1' else SR_Mrse;

  process (clk, rst_n)
  begin

    --Läs och skifta till rom;
    if (rst_n = '1') then
      ROM_Mrse <= (
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000",
        "00000000"
      );
      I_ROM_Mrse <= 0;
      I_SR_Mrse <= "000";

      -- Nolla utsignalerna
      uo_out <= "00000000";
    elsif rising_edge(clk) then
      if inc_ROM = '1' then
        I_ROM_Mrse <= I_ROM_Mrse + 1;
      end if;
      ui_in_old <= ui_in(5 downto 0);

      if STATE_Mrse = "000" then
        if (ui_in_sync(2) = '1') then
          FLUSH_SR_Mrse <= '1';
        end if;

        if (I_SR_Mrse = 4) then
          I_SR_Mrse <= "000";
          FLUSH_SR_Mrse <= '0';

          -- ROM_Mrse(I_ROM_Mrse) <= SR_Mrse;
          -- I_ROM_Mrse <= I_ROM_Mrse + 1;

          SR_Mrse <= "00000000";

        elsif (FLUSH_SR_Mrse = '1') or (ui_in_sync(0) = '1') or (ui_in_sync(1) = '1') then
          SR_Mrse <= SR_Mrse(5 downto 0) & ASCELL_Mrse;

          I_SR_Mrse <= I_SR_Mrse + 1;

        end if;
      end if;

      if ui_in_sync(3) = '1' then
        I_ROM_Mrse <= 0;
        I_SR_Mrse <= "000";
        STATE_Mrse <= "001";
      elsif ui_in_sync(4) = '1' then
        I_ROM_Mrse <= 0;
        I_SR_Mrse <= "000";
        STATE_Mrse <= "101";
      elsif ui_in_sync(5) = '1' then
        I_ROM_Mrse <= 0;
        I_SR_Mrse <= "000";
        STATE_Mrse <= "110";
      end if;

      if STATE_Mrse = "001" then
        if I_ROM_Mrse = 31 then
          I_ROM_Mrse <= 0;
          I_SR_Mrse <= "000";
          STATE_Mrse <= "000";
        else
          STATE_Mrse <= "011";
        end if;

        if I_SR_Mrse = 3 then
          I_SR_Mrse <= "000";
          -- I_ROM_Mrse <= I_ROM_Mrse + 1;
        end if;

        SR_Mrse <= ROM_I_Mrse;

        case I_SR_Mrse is
          when "000" =>
            CELL_Mrse <= SR_Mrse(7 downto 6);
          when "001" =>
            CELL_Mrse <= SR_Mrse(5 downto 4);
          when "010" =>
            CELL_Mrse <= SR_Mrse(3 downto 2);
          when "011" =>
            CELL_Mrse <= SR_Mrse(1 downto 0);
          when others =>
            null;
        end case;

      elsif STATE_Mrse = "010" then
        TIME_Mrse <= TIME_Mrse - 1;
        if TIME_Mrse > 1000 then
          uo_out <= "00000001";
        elsif TIME_Mrse > 1 then
          uo_out <= "00000000";
        else
          I_SR_Mrse <= I_SR_Mrse + 1;
          STATE_Mrse <= "001";
        end if;

      elsif STATE_Mrse = "011" then
        case CELL_Mrse is
          when "01" =>
            TIME_Mrse <= 3000;
            STATE_Mrse <= "010";
          when "10" =>
            TIME_Mrse <= 6000;
            STATE_Mrse <= "010";
          when others =>
            SR_Mrse <= ROM_I_Mrse;
            STATE_Mrse <= "001";
            if (SR_Mrse = "11111111") or (SR_Mrse = "00000000") then
              I_SR_Mrse <= I_SR_Mrse + 1;
            end if;
        end case;

      elsif (STATE_Mrse = "101") or (STATE_Mrse = "110") then
        if I_ROM_Mrse < 31 then
          if SR_Mrse = ROM_I_Mrse then
            -- ROM_Mrse(I_ROM_Mrse) <= not SR_Mrse;
            -- I_ROM_Mrse <= I_ROM_Mrse + 1;
          else
            SR_Mrse <= ROM_I_Mrse;
          end if;
        else
          I_ROM_Mrse <= 0;
          STATE_Mrse <= "000";
        end if;

      end if;
      if write_inverted = '1' or write_normal = '1' then
        ROM_Mrse(I_ROM_Mrse) <= write_value;
      end if;

    end if;
  end process;
end architecture;
