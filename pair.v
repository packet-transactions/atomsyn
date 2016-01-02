// typedefs
typedef logic [31:0]         int32_t;
typedef logic bool;
typedef logic[1:0] int2_t;

module pair(
    clk,

    i__pkt_1,
    i__pkt_2,
    i__cons_1,
    i__cons_2,
    i__cons_3,
    i__cons_4,
    i__cons_5,
    i__cons_6,
    i__cons_7,
    i__cons_8,
    i__cons_9,
    i__cons_10,
    i__cons_11,
    i__cons_12,
    i__cons_13,
    i__cons_14,
    i__cons_15,
    i__cons_16,
    i__cons_17,
    i__cons_18,
    i__cons_19,
 
    i__sel_1,
    i__sel_2,
    i__sel_3,
    i__sel_4,
    i__sel_5,
    i__sel_6,
    i__sel_7,
    i__sel_8,
    i__sel_9,
    i__sel_10,
    i__sel_11,
    i__sel_12,
    i__sel_13,
    i__sel_14,
    i__sel_15,
    i__sel_16,
    i__sel_17,
    i__sel_18,
    i__sel_19,
    i__sel_20,
    i__sel_21,
    i__sel_22,
    i__sel_23,
    i__sel_24,
    i__sel_25,
    i__sel_26,
    i__sel_27,
    i__sel_28,
    i__sel_29,
    i__sel_30,
    i__sel_31,
    i__sel_32,
    i__sel_33,

    i__rel_op1,
    i__rel_op2,
    i__rel_op3,

    o__write_1,
    o__write_2,
    o__read_1,
    o__read_2
);

// Input signals
input  int32_t          i__pkt_1;
input  int32_t          i__pkt_2;
input  int32_t          i__cons_1;
input  int32_t          i__cons_2;
input  int32_t          i__cons_3;
input  int32_t          i__cons_4;
input  int32_t          i__cons_5;
input  int32_t          i__cons_6;
input  int32_t          i__cons_7;
input  int32_t          i__cons_8;
input  int32_t          i__cons_9;
input  int32_t          i__cons_10;
input  int32_t          i__cons_11;
input  int32_t          i__cons_12;
input  int32_t          i__cons_13;
input  int32_t          i__cons_14;
input  int32_t          i__cons_15;
input  int32_t          i__cons_16;
input  int32_t          i__cons_17;
input  int32_t          i__cons_18;
input  int32_t          i__cons_19;

input  bool             i__sel_1;
input  bool             i__sel_2;
input  bool             i__sel_3;
input  bool             i__sel_4;
input  bool             i__sel_5;
input  bool             i__sel_6;
input  bool             i__sel_7;
input  int2_t           i__sel_8;
input  int2_t           i__sel_9;
input  bool             i__sel_10;
input  int2_t           i__sel_11;
input  int2_t           i__sel_12;
input  bool             i__sel_13;
input  bool             i__sel_14;
input  bool             i__sel_15;
input  bool             i__sel_16;
input  int2_t           i__sel_17;
input  int2_t           i__sel_18;
input  bool             i__sel_19;
input  int2_t           i__sel_20;
input  int2_t           i__sel_21;
input  bool             i__sel_22;
input  int2_t           i__sel_23;
input  int2_t           i__sel_24;
input  bool             i__sel_25;
input  int2_t           i__sel_26;
input  int2_t           i__sel_27;
input  bool             i__sel_28;
input  int2_t           i__sel_29;
input  int2_t           i__sel_30;
input  bool             i__sel_31;
input  int2_t           i__sel_32;
input  int2_t           i__sel_33;

input  int2_t           i__rel_op1;
input  int2_t           i__rel_op2;
input  int2_t           i__rel_op3;

// Sequential elements
int32_t state_1;
int32_t state_2;
input  logic clk;
int32_t          pkt_1;
int32_t          pkt_2;
int32_t          cons_1;
int32_t          cons_2;
int32_t          cons_3;
int32_t          cons_4;
int32_t          cons_5;
int32_t          cons_6;
int32_t          cons_7;
int32_t          cons_8;
int32_t          cons_9;
int32_t          cons_10;
int32_t          cons_11;
int32_t          cons_12;
int32_t          cons_13;
int32_t          cons_14;
int32_t          cons_15;
int32_t          cons_16;
int32_t          cons_17;
int32_t          cons_18;
int32_t          cons_19;

bool             sel_1;
bool             sel_2;
bool             sel_3;
bool             sel_4;
bool             sel_5;
bool             sel_6;
bool             sel_7;
int2_t           sel_8;
int2_t           sel_9;
bool             sel_10;
int2_t           sel_11;
int2_t           sel_12;
bool             sel_13;
bool             sel_14;
bool             sel_15;
bool             sel_16;
int2_t           sel_17;
int2_t           sel_18;
bool             sel_19;
int2_t           sel_20;
int2_t           sel_21;
bool             sel_22;
int2_t           sel_23;
int2_t           sel_24;
bool             sel_25;
int2_t           sel_26;
int2_t           sel_27;
bool             sel_28;
int2_t           sel_29;
int2_t           sel_30;
bool             sel_31;
int2_t           sel_32;
int2_t           sel_33;

int2_t           rel_op1;
int2_t           rel_op2;
int2_t           rel_op3;

// Output signals
output int32_t o__write_1;
output int32_t o__write_2;
output int32_t o__read_1;
output int32_t o__read_2;

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
  o__read_1  = state_1;
  o__read_2  = state_2;
  if (rel_op(mux2(state_1, state_2, sel_1) + mux2(pkt_1, pkt_2, sel_2) - mux2(pkt_1, pkt_2, sel_3), cons_1, rel_op1))
  begin
   if (rel_op(mux2(state_1, state_2, sel_4) + mux2(pkt_1, pkt_2, sel_5)   - mux2(pkt_1, pkt_2, sel_6), cons_2, rel_op2))
   begin
    o__write_1 = mux2(state_1, 0, sel_7)  + mux3(pkt_1, pkt_2, cons_3, sel_8)   - mux3(pkt_1, pkt_2, cons_4, sel_9);
    o__write_2 = mux2(state_2, 0, sel_22) + mux3(pkt_1, pkt_2, cons_12, sel_23) - mux3(pkt_1, pkt_2, cons_13, sel_24);
   end
   else
   begin
    o__write_1 = mux2(state_1, 0, sel_10) + mux3(pkt_1, pkt_2, cons_5, sel_11)  - mux3(pkt_1, pkt_2, cons_6, sel_12);
    o__write_2 = mux2(state_2, 0, sel_25) + mux3(pkt_1, pkt_2, cons_14, sel_26) - mux3(pkt_1, pkt_2, cons_15, sel_27);
   end
  end
  else
  begin
   if (rel_op(mux2(state_1, state_2, sel_13) + mux2(pkt_1, pkt_2, sel_14) - mux2(pkt_1, pkt_2, sel_15), cons_7, rel_op3))
   begin
    o__write_1 = mux2(state_1, 0, sel_16) + mux3(pkt_1, pkt_2, cons_8, sel_17)  - mux3(pkt_1, pkt_2, cons_9, sel_18);
    o__write_2 = mux2(state_2, 0, sel_28) + mux3(pkt_1, pkt_2, cons_16, sel_29) - mux3(pkt_1, pkt_2, cons_17, sel_30);
   end
   else
   begin
    o__write_1 = mux2(state_1, 0, sel_19) + mux3(pkt_1, pkt_2, cons_10, sel_20) - mux3(pkt_1, pkt_2, cons_11, sel_21);
    o__write_2 = mux2(state_2, 0, sel_31) + mux3(pkt_1, pkt_2, cons_18, sel_32) - mux3(pkt_1, pkt_2, cons_19, sel_33);
   end
  end
end

//------------------------------------------------------------------------------
//
always_ff @ (posedge clk)
begin
  state_1 <= o__write_1;
  state_2 <= o__write_2;
  pkt_1 <= i__pkt_1;
  pkt_2 <= i__pkt_2;
  cons_1 <= i__cons_1;
  cons_2 <= i__cons_2;
  cons_3 <= i__cons_3;
  cons_4 <= i__cons_4;
  cons_5 <= i__cons_5;
  cons_6 <= i__cons_6;
  cons_7 <= i__cons_7;
  cons_8 <= i__cons_8;
  cons_9 <= i__cons_9;
  cons_10 <= i__cons_10;
  cons_11 <= i__cons_11;
  cons_12 <= i__cons_12;
  cons_13 <= i__cons_13;
  cons_14 <= i__cons_14;
  cons_15 <= i__cons_15;
  cons_16 <= i__cons_16;
  cons_17 <= i__cons_17;
  cons_18 <= i__cons_18;
  cons_19 <= i__cons_19;
  sel_1 <= i__sel_1;
  sel_2 <= i__sel_2;
  sel_3 <= i__sel_3;
  sel_4 <= i__sel_4;
  sel_5 <= i__sel_5;
  sel_6 <= i__sel_6;
  sel_7 <= i__sel_7;
  sel_8 <= i__sel_8;
  sel_9 <= i__sel_9;
  sel_10 <= i__sel_10;
  sel_11 <= i__sel_11;
  sel_12 <= i__sel_12;
  sel_13 <= i__sel_13;
  sel_14 <= i__sel_14;
  sel_15 <= i__sel_15;
  sel_16 <= i__sel_16;
  sel_17 <= i__sel_17;
  sel_18 <= i__sel_18;
  sel_19 <= i__sel_19;
  sel_20 <= i__sel_20;
  sel_21 <= i__sel_21;
  sel_22 <= i__sel_22;
  sel_23 <= i__sel_23;
  sel_24 <= i__sel_24;
  sel_25 <= i__sel_25;
  sel_26 <= i__sel_26;
  sel_27 <= i__sel_27;
  sel_28 <= i__sel_28;
  sel_29 <= i__sel_29;
  sel_30 <= i__sel_30;
  sel_31 <= i__sel_31;
  sel_32 <= i__sel_32;
  sel_33 <= i__sel_33;
  rel_op1 <= i__rel_op1;
  rel_op2 <= i__rel_op2;
  rel_op3 <= i__rel_op3;
end
endmodule
