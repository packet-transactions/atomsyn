// typedefs
typedef logic [31:0]         int32_t;
typedef logic bool;
typedef logic[1:0] int2_t;

module pred_raw(
    clk,

    pkt_1,
    pkt_2,
    cons_1,
    cons_2,
 
    sel_1,
    sel_2,
    sel_3,
    sel_4,
    rel_opcode,

    o__write,
    o__read
);

// Input signals
input  int32_t          pkt_1;
input  int32_t          pkt_2;
input  int32_t          cons_1;
input  int32_t          cons_2;

input  bool             sel_1;
input  int2_t           sel_2;
input  bool             sel_3;
input  int2_t           sel_4;
input  int2_t           rel_opcode;

// Sequential elements
int32_t state_1;
input  logic clk;

// Output signals
output int32_t o__write;
output int32_t o__read;

// 2-way mux
function int32_t mux2 (input int32_t x, input int32_t y, input bool sel);
  case (sel)
    1'b0 : return x;
    1'b1 : return y;
  endcase
endfunction

// 3-way mux
function int32_t mux3 (input int32_t x, input int32_t y, input int32_t z, input int2_t sel);
  case (sel)
    2'd0 : return x;
    2'd1 : return y;
    2'd2 : return z;
    2'd3 : return z;
  endcase
endfunction

// Relational operator
function logic rel_op(input int32_t op1, input int32_t op2, input int2_t opcode);
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
  o__read  = state_1;
  if (rel_op((mux2(state_1, 0, sel_1)), mux3(pkt_1, pkt_2, cons_1, sel_2), rel_opcode))
  begin
    o__write = mux2(state_1, 0, sel_3) + mux3(pkt_1, pkt_2, cons_2, sel_4);
  end
  else
  begin
    o__write = state_1;
  end
end

//------------------------------------------------------------------------------
//
always_ff @ (posedge clk)
begin
  state_1 <= o__write;
end

endmodule
