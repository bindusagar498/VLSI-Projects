module serial_tx (
    input clk,
    input start,
    input [7:0] data,
    output reg tx
);

reg [3:0] count;
reg [7:0] temp;

always @(posedge clk) begin
    if (start) begin
        temp <= data;
        count <= 0;
    end else if (count < 8) begin
        tx <= temp[count];
        count <= count + 1;
    end
end

endmodule