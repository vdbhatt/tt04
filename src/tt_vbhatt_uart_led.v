`default_nettype none

// module tt_um_seven_segment_seconds #( parameter MAX_COUNT = 24'd10_000_000 ) (
module tt_vbhatt_uart_led #( parameter MAX_COUNT = 24'd10_000_000 ) (
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);
    wire rst= ~rst_n;
    top dut(
        .i(uin_in[0]),
        .o(uo_out[0]),
        .clk(clk),
        .rst(rst),
        .led_port(uo_out[6:1])
        );
endmodule
