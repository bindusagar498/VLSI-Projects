module uart_tx_tb;

reg clk, reset, start;
reg [7:0] data;
wire tx;
wire done;

uart_tx uut (clk, reset, start, data, tx, done);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1; #10;
    reset = 0;

    data = 8'b11001100;
    start = 1; #10;
    start = 0;

    #200;

    $finish;
end

endmodule