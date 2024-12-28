module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] low1;
    wire [15:0] low2;
    wire co;
    add16 a1 ( .a(a[15:0]), .b(b[15:0]), .sum(sum[15:0]), .cin(1'b0), .cout(co));
    add16 a2 ( .a(a[31:16]), .b(b[31:16]), .sum(low1), .cin(1'b0), .cout());
    add16 a3 ( .a(a[31:16]), .b(b[31:16]), .sum(low2), .cin(1'b1), .cout());
    always @(*) 
    begin
        case(co)
            1'b0: sum[31:16] = low1;
            1'b1: sum[31:16] = low2;
        endcase
    end
    
    
endmodule
