module top_module (
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    input wire e,
    output wire [24:0] out
);

    wire [24:0] top, bottom;
    assign top = {{5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}}};
    assign bottom = {5{a, b, c, d, e}};
    assign out = ~top ^ bottom;
endmodule