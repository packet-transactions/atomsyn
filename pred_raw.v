module counter(
    clk,

    i__constant,
    i__pkt_1,
    i__sel1,
    i__sel2,

    o__write,
    o__read
);

// Parameters
parameter COUNT_WIDTH                   = 32;

// Input signals
input  logic [COUNT_WIDTH-1:0]          i__constant;
input  logic [COUNT_WIDTH-1:0]          i__pkt_1;
input  logic                            i__sel1;
input  logic                            i__sel2;

// Sequential elements
logic [COUNT_WIDTH-1:0]                 r__register__pff;
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

// Relational operator
function logic rel_op(input logic[COUNT_WIDTH-1:0] op1, input logic[COUNT_WIDTH-1:0] op2, input logic[2:0] opcode);
  case(opcode)
    2'd0 : return op1 != op2;
    2'd1 : return op1 <  op2;
    2'd2 : return op1 >  op2;
    2'd3 : return op1 == op2;
  endcase
endfunction

//------------------------------------------------------------------------------
// Write register
//------------------------------------------------------------------------------
always_comb
begin
  o__read  = r__register__pff;
  o__write = mux(i__constant, i__pkt_1, i__sel1) + mux(r__register__pff, 0, i__sel2);
end

//------------------------------------------------------------------------------
//
always_ff @ (posedge clk)
begin
  r__register__pff <= o__write;
end

endmodule
