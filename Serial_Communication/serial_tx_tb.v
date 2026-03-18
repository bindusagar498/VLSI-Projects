module serial_tb;

reg clk, start;
reg [7:0] data;
wire tx;

serial_tx uut (clk, start, data, tx);

always #5 clk = ~clk;

initial begin
    clk = 0;
    start = 1;
    data = 8'b10101010; #10;

    start = 0;
    #100;

    $finish;
end

endmodule