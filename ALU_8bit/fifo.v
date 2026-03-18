module fifo (
    input clk,
    input reset,
    input write,
    input read,
    input [7:0] data_in,
    output reg [7:0] data_out
);

reg [7:0] mem [0:7];
reg [2:0] w_ptr, r_ptr;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        w_ptr <= 0;
        r_ptr <= 0;
    end else begin
        if (write) begin
            mem[w_ptr] <= data_in;
            w_ptr <= w_ptr + 1;
        end
        if (read) begin
            data_out <= mem[r_ptr];
            r_ptr <= r_ptr + 1;
        end
    end
end

endmodule