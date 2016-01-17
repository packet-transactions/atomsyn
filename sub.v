// typedefs
typedef logic [31:0]         int32_t;
typedef logic bool;
typedef logic[1:0] int2_t;

module sub(
    clk,

    i__pkt_1,
    i__pkt_2,
    i__cons_1,
    i__cons_2,
    i__cons_3,
    i__cons_4,
    i__cons_5,
    i__sel_1,
    i__sel_2,
    i__sel_3,
    i__sel_4,
    i__sel_5,
    i__sel_6,
    i__sel_7,
    i__sel_8,
    i__rel_opcode,
    i__arith_opcode1,
    i__arith_opcode2,

    o__write,
    o__read
);

// Input signals
input  int32_t          i__pkt_1;
input  int32_t          i__pkt_2;
input  int32_t          i__cons_1;
input  int32_t          i__cons_2;
input  int32_t          i__cons_3;
input  int32_t          i__cons_4;
input  int32_t          i__cons_5;
input  bool             i__sel_1;
input  int2_t           i__sel_2;
input  bool             i__sel_3;
input  int2_t           i__sel_4;
input  bool             i__sel_5;
input  int2_t           i__sel_6;
input  int2_t           i__sel_7;
input  int2_t           i__sel_8;
input  int2_t           i__rel_opcode;
input  bool             i__arith_opcode1;
input  bool             i__arith_opcode2;

// Sequential elements
int32_t state_1;
input  logic clk;
int32_t          pkt_1;
int32_t          pkt_2;
int32_t          cons_1;
int32_t          cons_2;
int32_t          cons_3;
int32_t          cons_4;
int32_t          cons_5;
bool             sel_1;
int2_t           sel_2;
bool             sel_3;
int2_t           sel_4;
bool             sel_5;
int2_t           sel_6;
int2_t           sel_7;
int2_t           sel_8;
int2_t           rel_opcode;
bool             arith_opcode1;
bool             arith_opcode2;
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

// Arithmetic operator
function int32_t arith_op(input int32_t op1, input int32_t op2, input bool opcode);
  case(opcode)
    1'b0 : return op1 - op2;
    1'b1 : return op1 + op2;
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
    o__write = mux2(state_1, 0, sel_3) + arith_op(mux3(pkt_1, pkt_2, cons_2, sel_4), mux3(pkt_1, pkt_2, cons_4, sel_7), arith_opcode1);
  end
  else
  begin
    o__write = mux2(state_1, 0, sel_5) + arith_op(mux3(pkt_1, pkt_2, cons_3, sel_6), mux3(pkt_1, pkt_2, cons_5, sel_8), arith_opcode2);
  end
end

//------------------------------------------------------------------------------
//
always_ff @ (posedge clk)
begin
  state_1 <= o__write;
  pkt_1 <= i__pkt_1;
  pkt_2 <= i__pkt_2;
  cons_1 <= i__cons_1;
  cons_2 <= i__cons_2;
  cons_3 <= i__cons_3;
  cons_4 <= i__cons_4;
  cons_5 <= i__cons_5;
  sel_1 <= i__sel_1;
  sel_2 <= i__sel_2;
  sel_3 <= i__sel_3;
  sel_4 <= i__sel_4;
  sel_5 <= i__sel_5;
  sel_6 <= i__sel_6;
  sel_7 <= i__sel_7;
  sel_8 <= i__sel_8;
  rel_opcode <= i__rel_opcode;
  arith_opcode1 <= i__arith_opcode1;
  arith_opcode2 <= i__arith_opcode2;
end
endmodule
