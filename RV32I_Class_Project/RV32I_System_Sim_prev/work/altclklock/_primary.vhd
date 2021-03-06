library verilog;
use verilog.vl_types.all;
entity altclklock is
    generic(
        inclock_period  : integer := 10000;
        inclock_settings: string  := "UNUSED";
        valid_lock_cycles: integer := 5;
        invalid_lock_cycles: integer := 5;
        valid_lock_multiplier: integer := 5;
        invalid_lock_multiplier: integer := 5;
        operation_mode  : string  := "NORMAL";
        clock0_boost    : integer := 1;
        clock0_divide   : integer := 1;
        clock0_settings : string  := "UNUSED";
        clock0_time_delay: string  := "0";
        clock1_boost    : integer := 1;
        clock1_divide   : integer := 1;
        clock1_settings : string  := "UNUSED";
        clock1_time_delay: string  := "0";
        clock2_boost    : integer := 1;
        clock2_divide   : integer := 1;
        clock2_settings : string  := "UNUSED";
        clock2_time_delay: string  := "0";
        clock_ext_boost : integer := 1;
        clock_ext_divide: integer := 1;
        clock_ext_settings: string  := "UNUSED";
        clock_ext_time_delay: string  := "0";
        outclock_phase_shift: integer := 0;
        intended_device_family: string  := "Stratix";
        lpm_type        : string  := "altclklock";
        lpm_hint        : string  := "UNUSED"
    );
    port(
        inclock         : in     vl_logic;
        inclocken       : in     vl_logic;
        fbin            : in     vl_logic;
        clock0          : out    vl_logic;
        clock1          : out    vl_logic;
        clock2          : out    vl_logic;
        clock_ext       : out    vl_logic;
        locked          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of inclock_period : constant is 1;
    attribute mti_svvh_generic_type of inclock_settings : constant is 1;
    attribute mti_svvh_generic_type of valid_lock_cycles : constant is 1;
    attribute mti_svvh_generic_type of invalid_lock_cycles : constant is 1;
    attribute mti_svvh_generic_type of valid_lock_multiplier : constant is 1;
    attribute mti_svvh_generic_type of invalid_lock_multiplier : constant is 1;
    attribute mti_svvh_generic_type of operation_mode : constant is 1;
    attribute mti_svvh_generic_type of clock0_boost : constant is 1;
    attribute mti_svvh_generic_type of clock0_divide : constant is 1;
    attribute mti_svvh_generic_type of clock0_settings : constant is 1;
    attribute mti_svvh_generic_type of clock0_time_delay : constant is 1;
    attribute mti_svvh_generic_type of clock1_boost : constant is 1;
    attribute mti_svvh_generic_type of clock1_divide : constant is 1;
    attribute mti_svvh_generic_type of clock1_settings : constant is 1;
    attribute mti_svvh_generic_type of clock1_time_delay : constant is 1;
    attribute mti_svvh_generic_type of clock2_boost : constant is 1;
    attribute mti_svvh_generic_type of clock2_divide : constant is 1;
    attribute mti_svvh_generic_type of clock2_settings : constant is 1;
    attribute mti_svvh_generic_type of clock2_time_delay : constant is 1;
    attribute mti_svvh_generic_type of clock_ext_boost : constant is 1;
    attribute mti_svvh_generic_type of clock_ext_divide : constant is 1;
    attribute mti_svvh_generic_type of clock_ext_settings : constant is 1;
    attribute mti_svvh_generic_type of clock_ext_time_delay : constant is 1;
    attribute mti_svvh_generic_type of outclock_phase_shift : constant is 1;
    attribute mti_svvh_generic_type of intended_device_family : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of lpm_hint : constant is 1;
end altclklock;
