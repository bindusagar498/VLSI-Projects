module traffic_light (
    input clk,
    input reset,
    output reg [2:0] light
);

parameter RED = 3'b100,
          GREEN = 3'b001,
          YELLOW = 3'b010;

reg [1:0] state;

always @(posedge clk or posedge reset) begin
    if (reset)
        state <= 0;
    else
        state <= state + 1;
end

always @(*) begin
    case(state)
        2'b00: light = RED;
        2'b01: light = GREEN;
        2'b10: light = YELLOW;
        default: light = RED;
    endcase
end

endmodule