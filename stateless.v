// typedefs
typedef logic [31:0]         int32_t;
typedef logic bool;
typedef logic[1:0] int2_t;

module stateless(
    clk,

    i__pkt_1,
    i__pkt_2,
    i__pkt_3,
    i__cons_1,
    i__opcode,
    i__sel_1,
    i__sel_2,
    i__sel_3,
    i__sel_4,
    i__sel_5,

    o_write,
    o_read
);

// Parameters
parameter COUNT_WIDTH                   = 32;

// Input signals
input  int32_t          i__pkt_1;
input  int32_t          i__pkt_2;
input  int32_t          i__pkt_3;
input  int32_t          i__cons_1;
input  logic [3:0]      i__opcode;
input  int2_t           i__sel_1;
input  int2_t           i__sel_2;
input  int2_t           i__sel_3;
input  int2_t           i__sel_4;
input  int2_t           i__sel_5;

// Sequential elements
input  logic clk;
int32_t          r__register__pff;
int32_t          pkt_1;
int32_t          pkt_2;
int32_t          pkt_3;
int32_t          cons_1;
logic [3:0]      opcode;
int2_t           sel_1;
int2_t           sel_2;
int2_t           sel_3;
int2_t           sel_4;
int2_t           sel_5;

// Output signals
output logic [COUNT_WIDTH-1:0]          o_write;
output logic [COUNT_WIDTH-1:0]          o_read;

// Intermediate signals
int32_t op_bin_1;
int32_t op_bin_2;
int32_t op_cond_1;
int32_t op_cond_2;
int32_t op_cond_3;

// 3-way mux
function int32_t mux3 (input int32_t x, input int32_t y, input int32_t z, input int2_t sel);
  case (sel)
    2'd0 : return x;
    2'd1 : return y;
    2'd2 : return z;
    2'd3 : return z;
  endcase
endfunction

// 4-way mux
function int32_t mux4 (input int32_t x, input int32_t y, input int32_t z, input int32_t w, input int2_t sel);
  case (sel)
    2'd0 : return x;
    2'd1 : return y;
    2'd2 : return z;
    2'd3 : return w;
  endcase
endfunction

//------------------------------------------------------------------------------
// Write register
//------------------------------------------------------------------------------
always_comb
begin
  o_read = r__register__pff;

  // Operands for binary operators
  op_bin_1     = mux3(pkt_1, pkt_2, cons_1, sel_1);
  op_bin_2     = mux3(pkt_1, pkt_2, cons_1, sel_2);

  // Operands for conditional operator
  op_cond_1    = mux4(pkt_1, pkt_2, pkt_3, cons_1, sel_3);
  op_cond_2    = mux4(pkt_1, pkt_2, pkt_3, cons_1, sel_4);
  op_cond_3    = mux4(pkt_1, pkt_2, pkt_3, cons_1, sel_5);

  case (opcode)
    // arithmetic
    4'd0 : o_write = (op_bin_1 +  op_bin_2);
    4'd1 : o_write = (op_bin_1 -  op_bin_2);
      // bit-wise operators (and, or, and xor)
    4'd2 : o_write = (op_bin_1 &  op_bin_2);
    4'd3 : o_write = (op_bin_1 ^  op_bin_2);
    4'd4 : o_write = (op_bin_1 |  op_bin_2);
    // relational
    4'd5 : o_write = (op_bin_1 == op_bin_2);
    4'd6 : o_write = (op_bin_1 != op_bin_2);
    4'd7 : o_write = (op_bin_1 >= op_bin_2);
    4'd8 : o_write = (op_bin_1 <  op_bin_2);
    // shifts
    4'd9:  o_write = (op_bin_1 << op_bin_2);
    4'd10: o_write = (op_bin_1 >> op_bin_2);
    // conditional
    default: o_write = (op_cond_1 ?  op_cond_2 : op_cond_3);
  endcase
end

//------------ Latch into register--------------------------------
always_ff @ (posedge clk)
begin
  r__register__pff <= o_write;
  pkt_1  <= i__pkt_1;
  pkt_2  <= i__pkt_2;
  pkt_3  <= i__pkt_3;
  cons_1 <= i__cons_1;
  opcode <= i__opcode;
  sel_1  <= i__sel_1;
  sel_2  <= i__sel_2;
  sel_3  <= i__sel_3;
  sel_4  <= i__sel_4;
  sel_5  <= i__sel_5;
end
endmodule
