module counter(
    clk,

    i__constant,
    i__pkt_1,
    i__sel,

    o__write__pff,
);

// Parameters
parameter COUNT_WIDTH                   = 3;

// Input signals
input  logic [COUNT_WIDTH-1:0]          i__constant;
input  logic [COUNT_WIDTH-1:0]          i__pkt_1;
input  logic                            i__sel;

// Sequential elements
logic [COUNT_WIDTH-1:0]                 r__write__pff;
input  logic clk;

// Output signals
output logic [COUNT_WIDTH-1:0]          o__write__pff;

// 2-way mux
function logic [COUNT_WIDTH-1:0] mux (input logic [COUNT_WIDTH-1:0] x, input logic [COUNT_WIDTH-1:0] y, input logic sel);
  case (sel)
    1'b0 : return x;
    1'b1 : return y;
  endcase
endfunction

//------------------------------------------------------------------------------
// Write register
//------------------------------------------------------------------------------
always_comb
begin
    o__write__pff = mux(i__constant, i__pkt_1, i__sel);
end
//------------------------------------------------------------------------------
//
always_ff @ (posedge clk)
begin
  r__write__pff <= o__write__pff;
end

endmodule
