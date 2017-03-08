module tb_SpiControl;

reg clock;
reg [31:0] data;
reg dataReady;
wire send;
reg [4:0] nextField;
wire [7:0] byte;
reg reset;

initial begin
    $from_myhdl(
        clock,
        data,
        dataReady,
        nextField,
        reset
    );
    $to_myhdl(
        send,
        byte
    );
end

SpiControl dut(
    clock,
    data,
    dataReady,
    send,
    nextField,
    byte,
    reset
);

endmodule
