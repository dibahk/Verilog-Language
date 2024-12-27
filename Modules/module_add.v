module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] o1, o2, cout, c;
    add16 add1 ( .a(a[15:0]), .b(b[15:0]), .sum(o1), .cin(1'b0), .cout(cout));
    add16 add2 ( .a(a[31:16]), .b(b[31:16]), .sum(o2), .cin(cout), .cout(c));
    assign sum = {o2, o1};    
endmodule
