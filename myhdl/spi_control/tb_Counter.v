module tb_Counter;

wire [31:0] count;
reg enable;
reg reset;

initial begin
    $from_myhdl(
        enable,
        reset
    );
    $to_myhdl(
        count
    );
end

Counter dut(
    count,
    enable,
    reset
);

endmodule
