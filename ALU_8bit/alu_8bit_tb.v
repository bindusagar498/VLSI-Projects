module alu_tb;

reg [7:0] A, B;
reg [2:0] sel;
wire [7:0] result;

alu_8bit uut (A, B, sel, result);

initial begin
    A = 10; B = 5;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;

    $finish;
end

endmodule