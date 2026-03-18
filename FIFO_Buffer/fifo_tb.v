module fifo_tb;

reg clk, reset, write, read;
reg [7:0] data_in;
wire [7:0] data_out;

fifo uut (clk, reset, write, read, data_in, data_out);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1; #10;
    reset = 0;

    write = 1; read = 0;
    data_in = 10; #10;
    data_in = 20; #10;

    write = 0; read = 1; #20;

    $finish;
end

endmodule