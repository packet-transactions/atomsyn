module rw(
    clk,

    i__constant,
    i__pkt_1,
    i__sel,

    o__write,
    o__read,
);

// Parameters
parameter COUNT_WIDTH                   = 32;

// Input signals
input  logic [COUNT_WIDTH-1:0]          i__constant;
input  logic [COUNT_WIDTH-1:0]          i__pkt_1;
input  logic                            i__sel;

// Sequential elements
logic [COUNT_WIDTH-1:0]                 r__register__pff;
logic [COUNT_WIDTH-1:0]                 r__constant;
logic [COUNT_WIDTH-1:0]                 r__pkt_1;
logic                                   r__sel;

input  logic clk;

// Output signals
output logic [COUNT_WIDTH-1:0]          o__write;
output logic [COUNT_WIDTH-1:0]          o__read;

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
  o__read  = r__register__pff;
  o__write = mux(r__constant, r__pkt_1, r__sel);
end

//------------------------------------------------------------------------------
//
always_ff @ (posedge clk)
begin
  r__register__pff <= o__write;
  r__constant      <= i__constant;
  r__pkt_1         <= i__pkt_1;
  r__sel           <= i__sel;
end

endmodule
