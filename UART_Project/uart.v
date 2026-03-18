module uart_tx (
    input clk,
    input reset,
    input start,
    input [7:0] data,
    output reg tx,
    output reg done
);

reg [3:0] count;
reg [9:0] frame;  // start + data + stop

always @(posedge clk or posedge reset) begin
    if (reset) begin
        tx <= 1;
        count <= 0;
        done <= 0;
    end
    else begin
        if (start) begin
            frame <= {1'b1, data, 1'b0}; // stop, data, start
            count <= 0;
            done <= 0;
        end
        else if (count < 10) begin
            tx <= frame[count];
            count <= count + 1;
        end
        else begin
            done <= 1;
        end
    end
end

endmodule