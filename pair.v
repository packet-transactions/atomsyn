// typedefs
typedef logic [31:0]         int32_t;
typedef logic bool;
typedef logic[1:0] int2_t;

module pair(
    clk,

    pkt_1,
    pkt_2,
    cons_1,
    cons_2,
    cons_3,
    cons_4,
    cons_5,
    cons_6,
    cons_7,
    cons_8,
    cons_9,
    cons_10,
    cons_11,
    cons_12,
    cons_13,
    cons_14,
    cons_15,
    cons_16,
    cons_17,
    cons_18,
    cons_19,
 
    sel_1,
    sel_2,
    sel_3,
    sel_4,
    sel_5,
    sel_6,
    sel_7,
    sel_8,
    sel_9,
    sel_10,
    sel_11,
    sel_12,
    sel_13,
    sel_14,
    sel_15,
    sel_16,
    sel_17,
    sel_18,
    sel_19,
    sel_20,
    sel_21,
    sel_22,
    sel_23,
    sel_24,
    sel_25,
    sel_26,
    sel_27,
    sel_28,
    sel_29,
    sel_30,
    sel_31,
    sel_32,
    sel_33,

    rel_op1,
    rel_op2,
    rel_op3,

    o__write_1,
    o__write_2,
    o__read_1,
    o__read_2
);

// Input signals
input  int32_t          pkt_1;
input  int32_t          pkt_2;
input  int32_t          cons_1;
input  int32_t          cons_2;
input  int32_t          cons_3;
input  int32_t          cons_4;
input  int32_t          cons_5;
input  int32_t          cons_6;
input  int32_t          cons_7;
input  int32_t          cons_8;
input  int32_t          cons_9;
input  int32_t          cons_10;
input  int32_t          cons_11;
input  int32_t          cons_12;
input  int32_t          cons_13;
input  int32_t          cons_14;
input  int32_t          cons_15;
input  int32_t          cons_16;
input  int32_t          cons_17;
input  int32_t          cons_18;
input  int32_t          cons_19;

input  bool             sel_1;
input  bool             sel_2;
input  bool             sel_3;
input  bool             sel_4;
input  bool             sel_5;
input  bool             sel_6;
input  bool             sel_7;
input  int2_t           sel_8;
input  int2_t           sel_9;
input  bool             sel_10;
input  int2_t           sel_11;
input  int2_t           sel_12;
input  bool             sel_13;
input  bool             sel_14;
input  bool             sel_15;
input  bool             sel_16;
input  int2_t           sel_17;
input  int2_t           sel_18;
input  bool             sel_19;
input  int2_t           sel_20;
input  int2_t           sel_21;
input  bool             sel_22;
input  int2_t           sel_23;
input  int2_t           sel_24;
input  bool             sel_25;
input  int2_t           sel_26;
input  int2_t           sel_27;
input  bool             sel_28;
input  int2_t           sel_29;
input  int2_t           sel_30;
input  bool             sel_31;
input  int2_t           sel_32;
input  int2_t           sel_33;

input  int2_t           rel_op1;
input  int2_t           rel_op2;
input  int2_t           rel_op3;

// Sequential elements
int32_t state_1;
int32_t state_2;
input  logic clk;

// Output signals
output int32_t o__write_1;
output int32_t o__write_2;
output int32_t o__read_1;
output int32_t o__read_2;

int32_t n_pkt_1;

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

// lut
function logic[31:0] lut(input [9:0] i__input);
    case (i__input)
    10'b0  :
    	begin
    	return 32'b101111101011110000100000000 ;
    	end
    10'b1  :
    	begin
    	return 32'b101111101011110000100000000 ;
    	end
    10'b10  :
    	begin
    	return 32'b100001101101111010110010110 ;
    	end
    10'b11  :
    	begin
    	return 32'b11011100001111011101110010 ;
    	end
    10'b100  :
    	begin
    	return 32'b10111110101111000010000000 ;
    	end
    10'b101  :
    	begin
    	return 32'b10101010100110010011001111 ;
    	end
    10'b110  :
    	begin
    	return 32'b10011011101110111111111101 ;
    	end
    10'b111  :
    	begin
    	return 32'b10010000001011101001011111 ;
    	end
    10'b1000  :
    	begin
    	return 32'b10000110110111101011001011 ;
    	end
    10'b1001  :
    	begin
    	return 32'b1111111001010000001010101 ;
    	end
    10'b1010  :
    	begin
    	return 32'b1111000101000011001111000 ;
    	end
    10'b1011  :
    	begin
    	return 32'b1110011000001000111011110 ;
    	end
    10'b1100  :
    	begin
    	return 32'b1101110000111101110111001 ;
    	end
    10'b1101  :
    	begin
    	return 32'b1101001110011001111100001 ;
    	end
    10'b1110  :
    	begin
    	return 32'b1100101111100111011101100 ;
    	end
    10'b1111  :
    	begin
    	return 32'b1100010011111101011110000 ;
    	end
    10'b10000  :
    	begin
    	return 32'b1011111010111100001000000 ;
    	end
    10'b10001  :
    	begin
    	return 32'b1011100100001010001111010 ;
    	end
    10'b10010  :
    	begin
    	return 32'b1011001111010011100110010 ;
    	end
    10'b10011  :
    	begin
    	return 32'b1010111100000111110000101 ;
    	end
    10'b10100  :
    	begin
    	return 32'b1010101010011001001100111 ;
    	end
    10'b10101  :
    	begin
    	return 32'b1010011001111100101011101 ;
    	end
    10'b10110  :
    	begin
    	return 32'b1010001010101000110000111 ;
    	end
    10'b10111  :
    	begin
    	return 32'b1001111100010101011110001 ;
    	end
    10'b11000  :
    	begin
    	return 32'b1001101110111011111111110 ;
    	end
    10'b11001  :
    	begin
    	return 32'b1001100010010110100000000 ;
    	end
    10'b11010  :
    	begin
    	return 32'b1001010110011111111011101 ;
    	end
    10'b11011  :
    	begin
    	return 32'b1001001011010011111010000 ;
    	end
    10'b11100  :
    	begin
    	return 32'b1001000000101110100101111 ;
    	end
    10'b11101  :
    	begin
    	return 32'b1000110110101100100111101 ;
    	end
    10'b11110  :
    	begin
    	return 32'b1000101101001011000001010 ;
    	end
    10'b11111  :
    	begin
    	return 32'b1000100100000111001010010 ;
    	end
    10'b100000  :
    	begin
    	return 32'b1000011011011110101100101 ;
    	end
    10'b100001  :
    	begin
    	return 32'b1000010011001111100010101 ;
    	end
    10'b100010  :
    	begin
    	return 32'b1000001011010111110100010 ;
    	end
    10'b100011  :
    	begin
    	return 32'b1000000011110101110101101 ;
    	end
    10'b100100  :
    	begin
    	return 32'b111111100101000000101010 ;
    	end
    10'b100101  :
    	begin
    	return 32'b111110101101101001011010 ;
    	end
    10'b100110  :
    	begin
    	return 32'b111101111000011110111110 ;
    	end
    10'b100111  :
    	begin
    	return 32'b111101000101011000001111 ;
    	end
    10'b101000  :
    	begin
    	return 32'b111100010100001100111100 ;
    	end
    10'b101001  :
    	begin
    	return 32'b111011100100110101100000 ;
    	end
    10'b101010  :
    	begin
    	return 32'b111010110111001010111110 ;
    	end
    10'b101011  :
    	begin
    	return 32'b111010001011000111000001 ;
    	end
    10'b101100  :
    	begin
    	return 32'b111001100000100011101111 ;
    	end
    10'b101101  :
    	begin
    	return 32'b111000110111011011101111 ;
    	end
    10'b101110  :
    	begin
    	return 32'b111000001111101010000011 ;
    	end
    10'b101111  :
    	begin
    	return 32'b110111101001001010000011 ;
    	end
    10'b110000  :
    	begin
    	return 32'b110111000011110111011100 ;
    	end
    10'b110001  :
    	begin
    	return 32'b110110011111101110010010 ;
    	end
    10'b110010  :
    	begin
    	return 32'b110101111100101010110111 ;
    	end
    10'b110011  :
    	begin
    	return 32'b110101011010101001110000 ;
    	end
    10'b110100  :
    	begin
    	return 32'b110100111001100111110000 ;
    	end
    10'b110101  :
    	begin
    	return 32'b110100011001100001111000 ;
    	end
    10'b110110  :
    	begin
    	return 32'b110011111010010101010100 ;
    	end
    10'b110111  :
    	begin
    	return 32'b110011011011111111011101 ;
    	end
    10'b111000  :
    	begin
    	return 32'b110010111110011101110110 ;
    	end
    10'b111001  :
    	begin
    	return 32'b110010100001101110001011 ;
    	end
    10'b111010  :
    	begin
    	return 32'b110010000101101110010011 ;
    	end
    10'b111011  :
    	begin
    	return 32'b110001101010011100001011 ;
    	end
    10'b111100  :
    	begin
    	return 32'b110001001111110101111000 ;
    	end
    10'b111101  :
    	begin
    	return 32'b110000110101111001100111 ;
    	end
    10'b111110  :
    	begin
    	return 32'b110000011100100101101100 ;
    	end
    10'b111111  :
    	begin
    	return 32'b110000000011111000011111 ;
    	end
    10'b1000000  :
    	begin
    	return 32'b101111101011110000100000 ;
    	end
    10'b1000001  :
    	begin
    	return 32'b101111010100001100010001 ;
    	end
    10'b1000010  :
    	begin
    	return 32'b101110111101001010011101 ;
    	end
    10'b1000011  :
    	begin
    	return 32'b101110100110101001110000 ;
    	end
    10'b1000100  :
    	begin
    	return 32'b101110010000101000111101 ;
    	end
    10'b1000101  :
    	begin
    	return 32'b101101111011000110111001 ;
    	end
    10'b1000110  :
    	begin
    	return 32'b101101100110000010011110 ;
    	end
    10'b1000111  :
    	begin
    	return 32'b101101010001011010101000 ;
    	end
    10'b1001000  :
    	begin
    	return 32'b101100111101001110011001 ;
    	end
    10'b1001001  :
    	begin
    	return 32'b101100101001011100110010 ;
    	end
    10'b1001010  :
    	begin
    	return 32'b101100010110000100111011 ;
    	end
    10'b1001011  :
    	begin
    	return 32'b101100000011000101111101 ;
    	end
    10'b1001100  :
    	begin
    	return 32'b101011110000011111000010 ;
    	end
    10'b1001101  :
    	begin
    	return 32'b101011011110001111011001 ;
    	end
    10'b1001110  :
    	begin
    	return 32'b101011001100010110010010 ;
    	end
    10'b1001111  :
    	begin
    	return 32'b101010111010110010111111 ;
    	end
    10'b1010000  :
    	begin
    	return 32'b101010101001100100110011 ;
    	end
    10'b1010001  :
    	begin
    	return 32'b101010011000101011000111 ;
    	end
    10'b1010010  :
    	begin
    	return 32'b101010001000000101010000 ;
    	end
    10'b1010011  :
    	begin
    	return 32'b101001110111110010101001 ;
    	end
    10'b1010100  :
    	begin
    	return 32'b101001100111110010101110 ;
    	end
    10'b1010101  :
    	begin
    	return 32'b101001011000000100111010 ;
    	end
    10'b1010110  :
    	begin
    	return 32'b101001001000101000101101 ;
    	end
    10'b1010111  :
    	begin
    	return 32'b101000111001011101100101 ;
    	end
    10'b1011000  :
    	begin
    	return 32'b101000101010100011000011 ;
    	end
    10'b1011001  :
    	begin
    	return 32'b101000011011111000101010 ;
    	end
    10'b1011010  :
    	begin
    	return 32'b101000001101011101111101 ;
    	end
    10'b1011011  :
    	begin
    	return 32'b100111111111010010100000 ;
    	end
    10'b1011100  :
    	begin
    	return 32'b100111110001010101111000 ;
    	end
    10'b1011101  :
    	begin
    	return 32'b100111100011100111101100 ;
    	end
    10'b1011110  :
    	begin
    	return 32'b100111010110000111100100 ;
    	end
    10'b1011111  :
    	begin
    	return 32'b100111001000110101000111 ;
    	end
    10'b1100000  :
    	begin
    	return 32'b100110111011101111111111 ;
    	end
    10'b1100001  :
    	begin
    	return 32'b100110101110110111110101 ;
    	end
    10'b1100010  :
    	begin
    	return 32'b100110100010001100010101 ;
    	end
    10'b1100011  :
    	begin
    	return 32'b100110010101101101001010 ;
    	end
    10'b1100100  :
    	begin
    	return 32'b100110001001011010000000 ;
    	end
    10'b1100101  :
    	begin
    	return 32'b100101111101010010100011 ;
    	end
    10'b1100110  :
    	begin
    	return 32'b100101110001010110100011 ;
    	end
    10'b1100111  :
    	begin
    	return 32'b100101100101100101101100 ;
    	end
    10'b1101000  :
    	begin
    	return 32'b100101011001111111101110 ;
    	end
    10'b1101001  :
    	begin
    	return 32'b100101001110100100011000 ;
    	end
    10'b1101010  :
    	begin
    	return 32'b100101000011010011011010 ;
    	end
    10'b1101011  :
    	begin
    	return 32'b100100111000001100100100 ;
    	end
    10'b1101100  :
    	begin
    	return 32'b100100101101001111101000 ;
    	end
    10'b1101101  :
    	begin
    	return 32'b100100100010011100010110 ;
    	end
    10'b1101110  :
    	begin
    	return 32'b100100010111110010100001 ;
    	end
    10'b1101111  :
    	begin
    	return 32'b100100001101010001111011 ;
    	end
    10'b1110000  :
    	begin
    	return 32'b100100000010111010010111 ;
    	end
    10'b1110001  :
    	begin
    	return 32'b100011111000101011101000 ;
    	end
    10'b1110010  :
    	begin
    	return 32'b100011101110100101100010 ;
    	end
    10'b1110011  :
    	begin
    	return 32'b100011100100100111111000 ;
    	end
    10'b1110100  :
    	begin
    	return 32'b100011011010110010011110 ;
    	end
    10'b1110101  :
    	begin
    	return 32'b100011010001000101001011 ;
    	end
    10'b1110110  :
    	begin
    	return 32'b100011000111011111110010 ;
    	end
    10'b1110111  :
    	begin
    	return 32'b100010111110000010001000 ;
    	end
    10'b1111000  :
    	begin
    	return 32'b100010110100101100000101 ;
    	end
    10'b1111001  :
    	begin
    	return 32'b100010101011011101011101 ;
    	end
    10'b1111010  :
    	begin
    	return 32'b100010100010010110000110 ;
    	end
    10'b1111011  :
    	begin
    	return 32'b100010011001010101111000 ;
    	end
    10'b1111100  :
    	begin
    	return 32'b100010010000011100101001 ;
    	end
    10'b1111101  :
    	begin
    	return 32'b100010000111101010001111 ;
    	end
    10'b1111110  :
    	begin
    	return 32'b100001111110111110100100 ;
    	end
    10'b1111111  :
    	begin
    	return 32'b100001110110011001011101 ;
    	end
    10'b10000000  :
    	begin
    	return 32'b100001101101111010110010 ;
    	end
    10'b10000001  :
    	begin
    	return 32'b100001100101100010011101 ;
    	end
    10'b10000010  :
    	begin
    	return 32'b100001011101010000010100 ;
    	end
    10'b10000011  :
    	begin
    	return 32'b100001010101000100010000 ;
    	end
    10'b10000100  :
    	begin
    	return 32'b100001001100111110001010 ;
    	end
    10'b10000101  :
    	begin
    	return 32'b100001000100111101111011 ;
    	end
    10'b10000110  :
    	begin
    	return 32'b100000111101000011011100 ;
    	end
    10'b10000111  :
    	begin
    	return 32'b100000110101001110100101 ;
    	end
    10'b10001000  :
    	begin
    	return 32'b100000101101011111010001 ;
    	end
    10'b10001001  :
    	begin
    	return 32'b100000100101110101011000 ;
    	end
    10'b10001010  :
    	begin
    	return 32'b100000011110010000110101 ;
    	end
    10'b10001011  :
    	begin
    	return 32'b100000010110110001100001 ;
    	end
    10'b10001100  :
    	begin
    	return 32'b100000001111010111010110 ;
    	end
    10'b10001101  :
    	begin
    	return 32'b100000001000000010001111 ;
    	end
    10'b10001110  :
    	begin
    	return 32'b100000000000110010000101 ;
    	end
    10'b10001111  :
    	begin
    	return 32'b11111111001100110110100 ;
    	end
    10'b10010000  :
    	begin
    	return 32'b11111110010100000010101 ;
    	end
    10'b10010001  :
    	begin
    	return 32'b11111101011011110100011 ;
    	end
    10'b10010010  :
    	begin
    	return 32'b11111100100100001011010 ;
    	end
    10'b10010011  :
    	begin
    	return 32'b11111011101101000110100 ;
    	end
    10'b10010100  :
    	begin
    	return 32'b11111010110110100101101 ;
    	end
    10'b10010101  :
    	begin
    	return 32'b11111010000000100111111 ;
    	end
    10'b10010110  :
    	begin
    	return 32'b11111001001011001100101 ;
    	end
    10'b10010111  :
    	begin
    	return 32'b11111000010110010011100 ;
    	end
    10'b10011000  :
    	begin
    	return 32'b11110111100001111011111 ;
    	end
    10'b10011001  :
    	begin
    	return 32'b11110110101110000101000 ;
    	end
    10'b10011010  :
    	begin
    	return 32'b11110101111010101110101 ;
    	end
    10'b10011011  :
    	begin
    	return 32'b11110101000111111000001 ;
    	end
    10'b10011100  :
    	begin
    	return 32'b11110100010101100000111 ;
    	end
    10'b10011101  :
    	begin
    	return 32'b11110011100011101000100 ;
    	end
    10'b10011110  :
    	begin
    	return 32'b11110010110010001110100 ;
    	end
    10'b10011111  :
    	begin
    	return 32'b11110010000001010010011 ;
    	end
    10'b10100000  :
    	begin
    	return 32'b11110001010000110011110 ;
    	end
    10'b10100001  :
    	begin
    	return 32'b11110000100000110010000 ;
    	end
    10'b10100010  :
    	begin
    	return 32'b11101111110001001100110 ;
    	end
    10'b10100011  :
    	begin
    	return 32'b11101111000010000011100 ;
    	end
    10'b10100100  :
    	begin
    	return 32'b11101110010011010110000 ;
    	end
    10'b10100101  :
    	begin
    	return 32'b11101101100101000011101 ;
    	end
    10'b10100110  :
    	begin
    	return 32'b11101100110111001100001 ;
    	end
    10'b10100111  :
    	begin
    	return 32'b11101100001001101111000 ;
    	end
    10'b10101000  :
    	begin
    	return 32'b11101011011100101011111 ;
    	end
    10'b10101001  :
    	begin
    	return 32'b11101010110000000010011 ;
    	end
    10'b10101010  :
    	begin
    	return 32'b11101010000011110010001 ;
    	end
    10'b10101011  :
    	begin
    	return 32'b11101001010111111010111 ;
    	end
    10'b10101100  :
    	begin
    	return 32'b11101000101100011100000 ;
    	end
    10'b10101101  :
    	begin
    	return 32'b11101000000001010101011 ;
    	end
    10'b10101110  :
    	begin
    	return 32'b11100111010110100110100 ;
    	end
    10'b10101111  :
    	begin
    	return 32'b11100110101100001111001 ;
    	end
    10'b10110000  :
    	begin
    	return 32'b11100110000010001110111 ;
    	end
    10'b10110001  :
    	begin
    	return 32'b11100101011000100101100 ;
    	end
    10'b10110010  :
    	begin
    	return 32'b11100100101111010010100 ;
    	end
    10'b10110011  :
    	begin
    	return 32'b11100100000110010101110 ;
    	end
    10'b10110100  :
    	begin
    	return 32'b11100011011101101110111 ;
    	end
    10'b10110101  :
    	begin
    	return 32'b11100010110101011101101 ;
    	end
    10'b10110110  :
    	begin
    	return 32'b11100010001101100001101 ;
    	end
    10'b10110111  :
    	begin
    	return 32'b11100001100101111010100 ;
    	end
    10'b10111000  :
    	begin
    	return 32'b11100000111110101000001 ;
    	end
    10'b10111001  :
    	begin
    	return 32'b11100000010111101010010 ;
    	end
    10'b10111010  :
    	begin
    	return 32'b11011111110001000000011 ;
    	end
    10'b10111011  :
    	begin
    	return 32'b11011111001010101010100 ;
    	end
    10'b10111100  :
    	begin
    	return 32'b11011110100100101000001 ;
    	end
    10'b10111101  :
    	begin
    	return 32'b11011101111110111001001 ;
    	end
    10'b10111110  :
    	begin
    	return 32'b11011101011001011101010 ;
    	end
    10'b10111111  :
    	begin
    	return 32'b11011100110100010100010 ;
    	end
    10'b11000000  :
    	begin
    	return 32'b11011100001111011101110 ;
    	end
    10'b11000001  :
    	begin
    	return 32'b11011011101010111001101 ;
    	end
    10'b11000010  :
    	begin
    	return 32'b11011011000110100111101 ;
    	end
    10'b11000011  :
    	begin
    	return 32'b11011010100010100111100 ;
    	end
    10'b11000100  :
    	begin
    	return 32'b11011001111110111001001 ;
    	end
    10'b11000101  :
    	begin
    	return 32'b11011001011011011100000 ;
    	end
    10'b11000110  :
    	begin
    	return 32'b11011000111000010000010 ;
    	end
    10'b11000111  :
    	begin
    	return 32'b11011000010101010101100 ;
    	end
    10'b11001000  :
    	begin
    	return 32'b11010111110010101011011 ;
    	end
    10'b11001001  :
    	begin
    	return 32'b11010111010000010010000 ;
    	end
    10'b11001010  :
    	begin
    	return 32'b11010110101110001000111 ;
    	end
    10'b11001011  :
    	begin
    	return 32'b11010110001100010000000 ;
    	end
    10'b11001100  :
    	begin
    	return 32'b11010101101010100111000 ;
    	end
    10'b11001101  :
    	begin
    	return 32'b11010101001001001101110 ;
    	end
    10'b11001110  :
    	begin
    	return 32'b11010100101000000100010 ;
    	end
    10'b11001111  :
    	begin
    	return 32'b11010100000111001010000 ;
    	end
    10'b11010000  :
    	begin
    	return 32'b11010011100110011111000 ;
    	end
    10'b11010001  :
    	begin
    	return 32'b11010011000110000011000 ;
    	end
    10'b11010010  :
    	begin
    	return 32'b11010010100101110101111 ;
    	end
    10'b11010011  :
    	begin
    	return 32'b11010010000101110111011 ;
    	end
    10'b11010100  :
    	begin
    	return 32'b11010001100110000111100 ;
    	end
    10'b11010101  :
    	begin
    	return 32'b11010001000110100101111 ;
    	end
    10'b11010110  :
    	begin
    	return 32'b11010000100111010010011 ;
    	end
    10'b11010111  :
    	begin
    	return 32'b11010000001000001100111 ;
    	end
    10'b11011000  :
    	begin
    	return 32'b11001111101001010101010 ;
    	end
    10'b11011001  :
    	begin
    	return 32'b11001111001010101011010 ;
    	end
    10'b11011010  :
    	begin
    	return 32'b11001110101100001110110 ;
    	end
    10'b11011011  :
    	begin
    	return 32'b11001110001101111111101 ;
    	end
    10'b11011100  :
    	begin
    	return 32'b11001101101111111101110 ;
    	end
    10'b11011101  :
    	begin
    	return 32'b11001101010010001000111 ;
    	end
    10'b11011110  :
    	begin
    	return 32'b11001100110100100001000 ;
    	end
    10'b11011111  :
    	begin
    	return 32'b11001100010111000101111 ;
    	end
    10'b11100000  :
    	begin
    	return 32'b11001011111001110111011 ;
    	end
    10'b11100001  :
    	begin
    	return 32'b11001011011100110101010 ;
    	end
    10'b11100010  :
    	begin
    	return 32'b11001010111111111111101 ;
    	end
    10'b11100011  :
    	begin
    	return 32'b11001010100011010110001 ;
    	end
    10'b11100100  :
    	begin
    	return 32'b11001010000110111000101 ;
    	end
    10'b11100101  :
    	begin
    	return 32'b11001001101010100111010 ;
    	end
    10'b11100110  :
    	begin
    	return 32'b11001001001110100001100 ;
    	end
    10'b11100111  :
    	begin
    	return 32'b11001000110010100111100 ;
    	end
    10'b11101000  :
    	begin
    	return 32'b11001000010110111001001 ;
    	end
    10'b11101001  :
    	begin
    	return 32'b11000111111011010110001 ;
    	end
    10'b11101010  :
    	begin
    	return 32'b11000111011111111110100 ;
    	end
    10'b11101011  :
    	begin
    	return 32'b11000111000100110010000 ;
    	end
    10'b11101100  :
    	begin
    	return 32'b11000110101001110000101 ;
    	end
    10'b11101101  :
    	begin
    	return 32'b11000110001110111010010 ;
    	end
    10'b11101110  :
    	begin
    	return 32'b11000101110100001110101 ;
    	end
    10'b11101111  :
    	begin
    	return 32'b11000101011001101101110 ;
    	end
    10'b11110000  :
    	begin
    	return 32'b11000100111111010111100 ;
    	end
    10'b11110001  :
    	begin
    	return 32'b11000100100101001011110 ;
    	end
    10'b11110010  :
    	begin
    	return 32'b11000100001011001010011 ;
    	end
    10'b11110011  :
    	begin
    	return 32'b11000011110001010011010 ;
    	end
    10'b11110100  :
    	begin
    	return 32'b11000011010111100110011 ;
    	end
    10'b11110101  :
    	begin
    	return 32'b11000010111110000011101 ;
    	end
    10'b11110110  :
    	begin
    	return 32'b11000010100100101010111 ;
    	end
    10'b11110111  :
    	begin
    	return 32'b11000010001011011011111 ;
    	end
    10'b11111000  :
    	begin
    	return 32'b11000001110010010110110 ;
    	end
    10'b11111001  :
    	begin
    	return 32'b11000001011001011011010 ;
    	end
    10'b11111010  :
    	begin
    	return 32'b11000001000000101001011 ;
    	end
    10'b11111011  :
    	begin
    	return 32'b11000000101000000001000 ;
    	end
    10'b11111100  :
    	begin
    	return 32'b11000000001111100001111 ;
    	end
    10'b11111101  :
    	begin
    	return 32'b10111111110111001100010 ;
    	end
    10'b11111110  :
    	begin
    	return 32'b10111111011110111111110 ;
    	end
    10'b11111111  :
    	begin
    	return 32'b10111111000110111100010 ;
    	end
    10'b100000000  :
    	begin
    	return 32'b10111110101111000010000 ;
    	end
    10'b100000001  :
    	begin
    	return 32'b10111110010111010000100 ;
    	end
    10'b100000010  :
    	begin
    	return 32'b10111101111111101000000 ;
    	end
    10'b100000011  :
    	begin
    	return 32'b10111101101000001000001 ;
    	end
    10'b100000100  :
    	begin
    	return 32'b10111101010000110001000 ;
    	end
    10'b100000101  :
    	begin
    	return 32'b10111100111001100010100 ;
    	end
    10'b100000110  :
    	begin
    	return 32'b10111100100010011100100 ;
    	end
    10'b100000111  :
    	begin
    	return 32'b10111100001011011111000 ;
    	end
    10'b100001000  :
    	begin
    	return 32'b10111011110100101001110 ;
    	end
    10'b100001001  :
    	begin
    	return 32'b10111011011101111100111 ;
    	end
    10'b100001010  :
    	begin
    	return 32'b10111011000111011000001 ;
    	end
    10'b100001011  :
    	begin
    	return 32'b10111010110000111011100 ;
    	end
    10'b100001100  :
    	begin
    	return 32'b10111010011010100111000 ;
    	end
    10'b100001101  :
    	begin
    	return 32'b10111010000100011010011 ;
    	end
    10'b100001110  :
    	begin
    	return 32'b10111001101110010101110 ;
    	end
    10'b100001111  :
    	begin
    	return 32'b10111001011000011000111 ;
    	end
    10'b100010000  :
    	begin
    	return 32'b10111001000010100011110 ;
    	end
    10'b100010001  :
    	begin
    	return 32'b10111000101100110110011 ;
    	end
    10'b100010010  :
    	begin
    	return 32'b10111000010111010000100 ;
    	end
    10'b100010011  :
    	begin
    	return 32'b10111000000001110010010 ;
    	end
    10'b100010100  :
    	begin
    	return 32'b10110111101100011011100 ;
    	end
    10'b100010101  :
    	begin
    	return 32'b10110111010111001100001 ;
    	end
    10'b100010110  :
    	begin
    	return 32'b10110111000010000100001 ;
    	end
    10'b100010111  :
    	begin
    	return 32'b10110110101101000011011 ;
    	end
    10'b100011000  :
    	begin
    	return 32'b10110110011000001001111 ;
    	end
    10'b100011001  :
    	begin
    	return 32'b10110110000011010111011 ;
    	end
    10'b100011010  :
    	begin
    	return 32'b10110101101110101100001 ;
    	end
    10'b100011011  :
    	begin
    	return 32'b10110101011010000111110 ;
    	end
    10'b100011100  :
    	begin
    	return 32'b10110101000101101010100 ;
    	end
    10'b100011101  :
    	begin
    	return 32'b10110100110001010100000 ;
    	end
    10'b100011110  :
    	begin
    	return 32'b10110100011101000100011 ;
    	end
    10'b100011111  :
    	begin
    	return 32'b10110100001000111011101 ;
    	end
    10'b100100000  :
    	begin
    	return 32'b10110011110100111001100 ;
    	end
    10'b100100001  :
    	begin
    	return 32'b10110011100000111110000 ;
    	end
    10'b100100010  :
    	begin
    	return 32'b10110011001101001001010 ;
    	end
    10'b100100011  :
    	begin
    	return 32'b10110010111001011010111 ;
    	end
    10'b100100100  :
    	begin
    	return 32'b10110010100101110011001 ;
    	end
    10'b100100101  :
    	begin
    	return 32'b10110010010010010001110 ;
    	end
    10'b100100110  :
    	begin
    	return 32'b10110001111110110110110 ;
    	end
    10'b100100111  :
    	begin
    	return 32'b10110001101011100010001 ;
    	end
    10'b100101000  :
    	begin
    	return 32'b10110001011000010011101 ;
    	end
    10'b100101001  :
    	begin
    	return 32'b10110001000101001011100 ;
    	end
    10'b100101010  :
    	begin
    	return 32'b10110000110010001001100 ;
    	end
    10'b100101011  :
    	begin
    	return 32'b10110000011111001101101 ;
    	end
    10'b100101100  :
    	begin
    	return 32'b10110000001100010111110 ;
    	end
    10'b100101101  :
    	begin
    	return 32'b10101111111001101000000 ;
    	end
    10'b100101110  :
    	begin
    	return 32'b10101111100110111110001 ;
    	end
    10'b100101111  :
    	begin
    	return 32'b10101111010100011010001 ;
    	end
    10'b100110000  :
    	begin
    	return 32'b10101111000001111100001 ;
    	end
    10'b100110001  :
    	begin
    	return 32'b10101110101111100011111 ;
    	end
    10'b100110010  :
    	begin
    	return 32'b10101110011101010001011 ;
    	end
    10'b100110011  :
    	begin
    	return 32'b10101110001011000100101 ;
    	end
    10'b100110100  :
    	begin
    	return 32'b10101101111000111101100 ;
    	end
    10'b100110101  :
    	begin
    	return 32'b10101101100110111100001 ;
    	end
    10'b100110110  :
    	begin
    	return 32'b10101101010101000000010 ;
    	end
    10'b100110111  :
    	begin
    	return 32'b10101101000011001001111 ;
    	end
    10'b100111000  :
    	begin
    	return 32'b10101100110001011001001 ;
    	end
    10'b100111001  :
    	begin
    	return 32'b10101100011111101101110 ;
    	end
    10'b100111010  :
    	begin
    	return 32'b10101100001110000111110 ;
    	end
    10'b100111011  :
    	begin
    	return 32'b10101011111100100111001 ;
    	end
    10'b100111100  :
    	begin
    	return 32'b10101011101011001011111 ;
    	end
    10'b100111101  :
    	begin
    	return 32'b10101011011001110101111 ;
    	end
    10'b100111110  :
    	begin
    	return 32'b10101011001000100101001 ;
    	end
    10'b100111111  :
    	begin
    	return 32'b10101010110111011001101 ;
    	end
    10'b101000000  :
    	begin
    	return 32'b10101010100110010011001 ;
    	end
    10'b101000001  :
    	begin
    	return 32'b10101010010101010001111 ;
    	end
    10'b101000010  :
    	begin
    	return 32'b10101010000100010101110 ;
    	end
    10'b101000011  :
    	begin
    	return 32'b10101001110011011110100 ;
    	end
    10'b101000100  :
    	begin
    	return 32'b10101001100010101100011 ;
    	end
    10'b101000101  :
    	begin
    	return 32'b10101001010001111111001 ;
    	end
    10'b101000110  :
    	begin
    	return 32'b10101001000001010110111 ;
    	end
    10'b101000111  :
    	begin
    	return 32'b10101000110000110011100 ;
    	end
    10'b101001000  :
    	begin
    	return 32'b10101000100000010101000 ;
    	end
    10'b101001001  :
    	begin
    	return 32'b10101000001111111011010 ;
    	end
    10'b101001010  :
    	begin
    	return 32'b10100111111111100110010 ;
    	end
    10'b101001011  :
    	begin
    	return 32'b10100111101111010110001 ;
    	end
    10'b101001100  :
    	begin
    	return 32'b10100111011111001010100 ;
    	end
    10'b101001101  :
    	begin
    	return 32'b10100111001111000011110 ;
    	end
    10'b101001110  :
    	begin
    	return 32'b10100110111111000001100 ;
    	end
    10'b101001111  :
    	begin
    	return 32'b10100110101111000011111 ;
    	end
    10'b101010000  :
    	begin
    	return 32'b10100110011111001010111 ;
    	end
    10'b101010001  :
    	begin
    	return 32'b10100110001111010110011 ;
    	end
    10'b101010010  :
    	begin
    	return 32'b10100101111111100110010 ;
    	end
    10'b101010011  :
    	begin
    	return 32'b10100101101111111010110 ;
    	end
    10'b101010100  :
    	begin
    	return 32'b10100101100000010011101 ;
    	end
    10'b101010101  :
    	begin
    	return 32'b10100101010000110000111 ;
    	end
    10'b101010110  :
    	begin
    	return 32'b10100101000001010010100 ;
    	end
    10'b101010111  :
    	begin
    	return 32'b10100100110001111000100 ;
    	end
    10'b101011000  :
    	begin
    	return 32'b10100100100010100010110 ;
    	end
    10'b101011001  :
    	begin
    	return 32'b10100100010011010001011 ;
    	end
    10'b101011010  :
    	begin
    	return 32'b10100100000100000100001 ;
    	end
    10'b101011011  :
    	begin
    	return 32'b10100011110100111011001 ;
    	end
    10'b101011100  :
    	begin
    	return 32'b10100011100101110110010 ;
    	end
    10'b101011101  :
    	begin
    	return 32'b10100011010110110101101 ;
    	end
    10'b101011110  :
    	begin
    	return 32'b10100011000111111001000 ;
    	end
    10'b101011111  :
    	begin
    	return 32'b10100010111001000000101 ;
    	end
    10'b101100000  :
    	begin
    	return 32'b10100010101010001100001 ;
    	end
    10'b101100001  :
    	begin
    	return 32'b10100010011011011011110 ;
    	end
    10'b101100010  :
    	begin
    	return 32'b10100010001100101111100 ;
    	end
    10'b101100011  :
    	begin
    	return 32'b10100001111110000111000 ;
    	end
    10'b101100100  :
    	begin
    	return 32'b10100001101111100010101 ;
    	end
    10'b101100101  :
    	begin
    	return 32'b10100001100001000010001 ;
    	end
    10'b101100110  :
    	begin
    	return 32'b10100001010010100101100 ;
    	end
    10'b101100111  :
    	begin
    	return 32'b10100001000100001100110 ;
    	end
    10'b101101000  :
    	begin
    	return 32'b10100000110101110111110 ;
    	end
    10'b101101001  :
    	begin
    	return 32'b10100000100111100110101 ;
    	end
    10'b101101010  :
    	begin
    	return 32'b10100000011001011001011 ;
    	end
    10'b101101011  :
    	begin
    	return 32'b10100000001011001111110 ;
    	end
    10'b101101100  :
    	begin
    	return 32'b10011111111101001010000 ;
    	end
    10'b101101101  :
    	begin
    	return 32'b10011111101111000111111 ;
    	end
    10'b101101110  :
    	begin
    	return 32'b10011111100001001001011 ;
    	end
    10'b101101111  :
    	begin
    	return 32'b10011111010011001110101 ;
    	end
    10'b101110000  :
    	begin
    	return 32'b10011111000101010111100 ;
    	end
    10'b101110001  :
    	begin
    	return 32'b10011110110111100100000 ;
    	end
    10'b101110010  :
    	begin
    	return 32'b10011110101001110100000 ;
    	end
    10'b101110011  :
    	begin
    	return 32'b10011110011100000111101 ;
    	end
    10'b101110100  :
    	begin
    	return 32'b10011110001110011110110 ;
    	end
    10'b101110101  :
    	begin
    	return 32'b10011110000000111001011 ;
    	end
    10'b101110110  :
    	begin
    	return 32'b10011101110011010111100 ;
    	end
    10'b101110111  :
    	begin
    	return 32'b10011101100101111001001 ;
    	end
    10'b101111000  :
    	begin
    	return 32'b10011101011000011110010 ;
    	end
    10'b101111001  :
    	begin
    	return 32'b10011101001011000110110 ;
    	end
    10'b101111010  :
    	begin
    	return 32'b10011100111101110010100 ;
    	end
    10'b101111011  :
    	begin
    	return 32'b10011100110000100001110 ;
    	end
    10'b101111100  :
    	begin
    	return 32'b10011100100011010100011 ;
    	end
    10'b101111101  :
    	begin
    	return 32'b10011100010110001010011 ;
    	end
    10'b101111110  :
    	begin
    	return 32'b10011100001001000011101 ;
    	end
    10'b101111111  :
    	begin
    	return 32'b10011011111100000000001 ;
    	end
    10'b110000000  :
    	begin
    	return 32'b10011011101110111111111 ;
    	end
    10'b110000001  :
    	begin
    	return 32'b10011011100010000010111 ;
    	end
    10'b110000010  :
    	begin
    	return 32'b10011011010101001001001 ;
    	end
    10'b110000011  :
    	begin
    	return 32'b10011011001000010010101 ;
    	end
    10'b110000100  :
    	begin
    	return 32'b10011010111011011111010 ;
    	end
    10'b110000101  :
    	begin
    	return 32'b10011010101110101111001 ;
    	end
    10'b110000110  :
    	begin
    	return 32'b10011010100010000010000 ;
    	end
    10'b110000111  :
    	begin
    	return 32'b10011010010101011000001 ;
    	end
    10'b110001000  :
    	begin
    	return 32'b10011010001000110001010 ;
    	end
    10'b110001001  :
    	begin
    	return 32'b10011001111100001101100 ;
    	end
    10'b110001010  :
    	begin
    	return 32'b10011001101111101100111 ;
    	end
    10'b110001011  :
    	begin
    	return 32'b10011001100011001111010 ;
    	end
    10'b110001100  :
    	begin
    	return 32'b10011001010110110100101 ;
    	end
    10'b110001101  :
    	begin
    	return 32'b10011001001010011101000 ;
    	end
    10'b110001110  :
    	begin
    	return 32'b10011000111110001000011 ;
    	end
    10'b110001111  :
    	begin
    	return 32'b10011000110001110110101 ;
    	end
    10'b110010000  :
    	begin
    	return 32'b10011000100101101000000 ;
    	end
    10'b110010001  :
    	begin
    	return 32'b10011000011001011100001 ;
    	end
    10'b110010010  :
    	begin
    	return 32'b10011000001101010011010 ;
    	end
    10'b110010011  :
    	begin
    	return 32'b10011000000001001101010 ;
    	end
    10'b110010100  :
    	begin
    	return 32'b10010111110101001010001 ;
    	end
    10'b110010101  :
    	begin
    	return 32'b10010111101001001001111 ;
    	end
    10'b110010110  :
    	begin
    	return 32'b10010111011101001100100 ;
    	end
    10'b110010111  :
    	begin
    	return 32'b10010111010001010001111 ;
    	end
    10'b110011000  :
    	begin
    	return 32'b10010111000101011010001 ;
    	end
    10'b110011001  :
    	begin
    	return 32'b10010110111001100101001 ;
    	end
    10'b110011010  :
    	begin
    	return 32'b10010110101101110010111 ;
    	end
    10'b110011011  :
    	begin
    	return 32'b10010110100010000011100 ;
    	end
    10'b110011100  :
    	begin
    	return 32'b10010110010110010110110 ;
    	end
    10'b110011101  :
    	begin
    	return 32'b10010110001010101100110 ;
    	end
    10'b110011110  :
    	begin
    	return 32'b10010101111111000101011 ;
    	end
    10'b110011111  :
    	begin
    	return 32'b10010101110011100000110 ;
    	end
    10'b110100000  :
    	begin
    	return 32'b10010101100111111110111 ;
    	end
    10'b110100001  :
    	begin
    	return 32'b10010101011100011111101 ;
    	end
    10'b110100010  :
    	begin
    	return 32'b10010101010001000010111 ;
    	end
    10'b110100011  :
    	begin
    	return 32'b10010101000101101000111 ;
    	end
    10'b110100100  :
    	begin
    	return 32'b10010100111010010001100 ;
    	end
    10'b110100101  :
    	begin
    	return 32'b10010100101110111100101 ;
    	end
    10'b110100110  :
    	begin
    	return 32'b10010100100011101010011 ;
    	end
    10'b110100111  :
    	begin
    	return 32'b10010100011000011010110 ;
    	end
    10'b110101000  :
    	begin
    	return 32'b10010100001101001101101 ;
    	end
    10'b110101001  :
    	begin
    	return 32'b10010100000010000011000 ;
    	end
    10'b110101010  :
    	begin
    	return 32'b10010011110110111010111 ;
    	end
    10'b110101011  :
    	begin
    	return 32'b10010011101011110101011 ;
    	end
    10'b110101100  :
    	begin
    	return 32'b10010011100000110010010 ;
    	end
    10'b110101101  :
    	begin
    	return 32'b10010011010101110001101 ;
    	end
    10'b110101110  :
    	begin
    	return 32'b10010011001010110011100 ;
    	end
    10'b110101111  :
    	begin
    	return 32'b10010010111111110111110 ;
    	end
    10'b110110000  :
    	begin
    	return 32'b10010010110100111110100 ;
    	end
    10'b110110001  :
    	begin
    	return 32'b10010010101010000111101 ;
    	end
    10'b110110010  :
    	begin
    	return 32'b10010010011111010011001 ;
    	end
    10'b110110011  :
    	begin
    	return 32'b10010010010100100001001 ;
    	end
    10'b110110100  :
    	begin
    	return 32'b10010010001001110001011 ;
    	end
    10'b110110101  :
    	begin
    	return 32'b10010001111111000100000 ;
    	end
    10'b110110110  :
    	begin
    	return 32'b10010001110100011001000 ;
    	end
    10'b110110111  :
    	begin
    	return 32'b10010001101001110000011 ;
    	end
    10'b110111000  :
    	begin
    	return 32'b10010001011111001010000 ;
    	end
    10'b110111001  :
    	begin
    	return 32'b10010001010100100110000 ;
    	end
    10'b110111010  :
    	begin
    	return 32'b10010001001010000100010 ;
    	end
    10'b110111011  :
    	begin
    	return 32'b10010000111111100100111 ;
    	end
    10'b110111100  :
    	begin
    	return 32'b10010000110101000111101 ;
    	end
    10'b110111101  :
    	begin
    	return 32'b10010000101010101100110 ;
    	end
    10'b110111110  :
    	begin
    	return 32'b10010000100000010100001 ;
    	end
    10'b110111111  :
    	begin
    	return 32'b10010000010101111101101 ;
    	end
    10'b111000000  :
    	begin
    	return 32'b10010000001011101001011 ;
    	end
    10'b111000001  :
    	begin
    	return 32'b10010000000001010111011 ;
    	end
    10'b111000010  :
    	begin
    	return 32'b10001111110111000111101 ;
    	end
    10'b111000011  :
    	begin
    	return 32'b10001111101100111010000 ;
    	end
    10'b111000100  :
    	begin
    	return 32'b10001111100010101110100 ;
    	end
    10'b111000101  :
    	begin
    	return 32'b10001111011000100101001 ;
    	end
    10'b111000110  :
    	begin
    	return 32'b10001111001110011110000 ;
    	end
    10'b111000111  :
    	begin
    	return 32'b10001111000100011001000 ;
    	end
    10'b111001000  :
    	begin
    	return 32'b10001110111010010110001 ;
    	end
    10'b111001001  :
    	begin
    	return 32'b10001110110000010101010 ;
    	end
    10'b111001010  :
    	begin
    	return 32'b10001110100110010110101 ;
    	end
    10'b111001011  :
    	begin
    	return 32'b10001110011100011010000 ;
    	end
    10'b111001100  :
    	begin
    	return 32'b10001110010010011111100 ;
    	end
    10'b111001101  :
    	begin
    	return 32'b10001110001000100111000 ;
    	end
    10'b111001110  :
    	begin
    	return 32'b10001101111110110000101 ;
    	end
    10'b111001111  :
    	begin
    	return 32'b10001101110100111100010 ;
    	end
    10'b111010000  :
    	begin
    	return 32'b10001101101011001001111 ;
    	end
    10'b111010001  :
    	begin
    	return 32'b10001101100001011001100 ;
    	end
    10'b111010010  :
    	begin
    	return 32'b10001101010111101011010 ;
    	end
    10'b111010011  :
    	begin
    	return 32'b10001101001101111111000 ;
    	end
    10'b111010100  :
    	begin
    	return 32'b10001101000100010100101 ;
    	end
    10'b111010101  :
    	begin
    	return 32'b10001100111010101100010 ;
    	end
    10'b111010110  :
    	begin
    	return 32'b10001100110001000110000 ;
    	end
    10'b111010111  :
    	begin
    	return 32'b10001100100111100001100 ;
    	end
    10'b111011000  :
    	begin
    	return 32'b10001100011101111111001 ;
    	end
    10'b111011001  :
    	begin
    	return 32'b10001100010100011110100 ;
    	end
    10'b111011010  :
    	begin
    	return 32'b10001100001011000000000 ;
    	end
    10'b111011011  :
    	begin
    	return 32'b10001100000001100011010 ;
    	end
    10'b111011100  :
    	begin
    	return 32'b10001011111000001000100 ;
    	end
    10'b111011101  :
    	begin
    	return 32'b10001011101110101111101 ;
    	end
    10'b111011110  :
    	begin
    	return 32'b10001011100101011000101 ;
    	end
    10'b111011111  :
    	begin
    	return 32'b10001011011100000011100 ;
    	end
    10'b111100000  :
    	begin
    	return 32'b10001011010010110000010 ;
    	end
    10'b111100001  :
    	begin
    	return 32'b10001011001001011110111 ;
    	end
    10'b111100010  :
    	begin
    	return 32'b10001011000000001111011 ;
    	end
    10'b111100011  :
    	begin
    	return 32'b10001010110111000001101 ;
    	end
    10'b111100100  :
    	begin
    	return 32'b10001010101101110101110 ;
    	end
    10'b111100101  :
    	begin
    	return 32'b10001010100100101011110 ;
    	end
    10'b111100110  :
    	begin
    	return 32'b10001010011011100011100 ;
    	end
    10'b111100111  :
    	begin
    	return 32'b10001010010010011101000 ;
    	end
    10'b111101000  :
    	begin
    	return 32'b10001010001001011000011 ;
    	end
    10'b111101001  :
    	begin
    	return 32'b10001010000000010101100 ;
    	end
    10'b111101010  :
    	begin
    	return 32'b10001001110111010100011 ;
    	end
    10'b111101011  :
    	begin
    	return 32'b10001001101110010101000 ;
    	end
    10'b111101100  :
    	begin
    	return 32'b10001001100101010111100 ;
    	end
    10'b111101101  :
    	begin
    	return 32'b10001001011100011011101 ;
    	end
    10'b111101110  :
    	begin
    	return 32'b10001001010011100001100 ;
    	end
    10'b111101111  :
    	begin
    	return 32'b10001001001010101001001 ;
    	end
    10'b111110000  :
    	begin
    	return 32'b10001001000001110010100 ;
    	end
    10'b111110001  :
    	begin
    	return 32'b10001000111000111101101 ;
    	end
    10'b111110010  :
    	begin
    	return 32'b10001000110000001010011 ;
    	end
    10'b111110011  :
    	begin
    	return 32'b10001000100111011000110 ;
    	end
    10'b111110100  :
    	begin
    	return 32'b10001000011110101000111 ;
    	end
    10'b111110101  :
    	begin
    	return 32'b10001000010101111010110 ;
    	end
    10'b111110110  :
    	begin
    	return 32'b10001000001101001110010 ;
    	end
    10'b111110111  :
    	begin
    	return 32'b10001000000100100011011 ;
    	end
    10'b111111000  :
    	begin
    	return 32'b10000111111011111010010 ;
    	end
    10'b111111001  :
    	begin
    	return 32'b10000111110011010010101 ;
    	end
    10'b111111010  :
    	begin
    	return 32'b10000111101010101100110 ;
    	end
    10'b111111011  :
    	begin
    	return 32'b10000111100010001000011 ;
    	end
    10'b111111100  :
    	begin
    	return 32'b10000111011001100101110 ;
    	end
    10'b111111101  :
    	begin
    	return 32'b10000111010001000100110 ;
    	end
    10'b111111110  :
    	begin
    	return 32'b10000111001000100101010 ;
    	end
    10'b111111111  :
    	begin
    	return 32'b10000111000000000111011 ;
    	end
    10'b1000000000  :
    	begin
    	return 32'b10000110110111101011001 ;
    	end
    10'b1000000001  :
    	begin
    	return 32'b10000110101111010000011 ;
    	end
    10'b1000000010  :
    	begin
    	return 32'b10000110100110110111010 ;
    	end
    10'b1000000011  :
    	begin
    	return 32'b10000110011110011111110 ;
    	end
    10'b1000000100  :
    	begin
    	return 32'b10000110010110001001110 ;
    	end
    10'b1000000101  :
    	begin
    	return 32'b10000110001101110101010 ;
    	end
    10'b1000000110  :
    	begin
    	return 32'b10000110000101100010011 ;
    	end
    10'b1000000111  :
    	begin
    	return 32'b10000101111101010001000 ;
    	end
    10'b1000001000  :
    	begin
    	return 32'b10000101110101000001010 ;
    	end
    10'b1000001001  :
    	begin
    	return 32'b10000101101100110010111 ;
    	end
    10'b1000001010  :
    	begin
    	return 32'b10000101100100100110001 ;
    	end
    10'b1000001011  :
    	begin
    	return 32'b10000101011100011010110 ;
    	end
    10'b1000001100  :
    	begin
    	return 32'b10000101010100010001000 ;
    	end
    10'b1000001101  :
    	begin
    	return 32'b10000101001100001000101 ;
    	end
    10'b1000001110  :
    	begin
    	return 32'b10000101000100000001111 ;
    	end
    10'b1000001111  :
    	begin
    	return 32'b10000100111011111100100 ;
    	end
    10'b1000010000  :
    	begin
    	return 32'b10000100110011111000101 ;
    	end
    10'b1000010001  :
    	begin
    	return 32'b10000100101011110110010 ;
    	end
    10'b1000010010  :
    	begin
    	return 32'b10000100100011110101010 ;
    	end
    10'b1000010011  :
    	begin
    	return 32'b10000100011011110101110 ;
    	end
    10'b1000010100  :
    	begin
    	return 32'b10000100010011110111101 ;
    	end
    10'b1000010101  :
    	begin
    	return 32'b10000100001011111011000 ;
    	end
    10'b1000010110  :
    	begin
    	return 32'b10000100000011111111111 ;
    	end
    10'b1000010111  :
    	begin
    	return 32'b10000011111100000110001 ;
    	end
    10'b1000011000  :
    	begin
    	return 32'b10000011110100001101110 ;
    	end
    10'b1000011001  :
    	begin
    	return 32'b10000011101100010110110 ;
    	end
    10'b1000011010  :
    	begin
    	return 32'b10000011100100100001010 ;
    	end
    10'b1000011011  :
    	begin
    	return 32'b10000011011100101101000 ;
    	end
    10'b1000011100  :
    	begin
    	return 32'b10000011010100111010010 ;
    	end
    10'b1000011101  :
    	begin
    	return 32'b10000011001101001000111 ;
    	end
    10'b1000011110  :
    	begin
    	return 32'b10000011000101011000111 ;
    	end
    10'b1000011111  :
    	begin
    	return 32'b10000010111101101010010 ;
    	end
    10'b1000100000  :
    	begin
    	return 32'b10000010110101111101000 ;
    	end
    10'b1000100001  :
    	begin
    	return 32'b10000010101110010001001 ;
    	end
    10'b1000100010  :
    	begin
    	return 32'b10000010100110100110100 ;
    	end
    10'b1000100011  :
    	begin
    	return 32'b10000010011110111101011 ;
    	end
    10'b1000100100  :
    	begin
    	return 32'b10000010010111010101100 ;
    	end
    10'b1000100101  :
    	begin
    	return 32'b10000010001111101110111 ;
    	end
    10'b1000100110  :
    	begin
    	return 32'b10000010001000001001110 ;
    	end
    10'b1000100111  :
    	begin
    	return 32'b10000010000000100101111 ;
    	end
    10'b1000101000  :
    	begin
    	return 32'b10000001111001000011010 ;
    	end
    10'b1000101001  :
    	begin
    	return 32'b10000001110001100010000 ;
    	end
    10'b1000101010  :
    	begin
    	return 32'b10000001101010000010000 ;
    	end
    10'b1000101011  :
    	begin
    	return 32'b10000001100010100011011 ;
    	end
    10'b1000101100  :
    	begin
    	return 32'b10000001011011000110000 ;
    	end
    10'b1000101101  :
    	begin
    	return 32'b10000001010011101001111 ;
    	end
    10'b1000101110  :
    	begin
    	return 32'b10000001001100001111001 ;
    	end
    10'b1000101111  :
    	begin
    	return 32'b10000001000100110101101 ;
    	end
    10'b1000110000  :
    	begin
    	return 32'b10000000111101011101011 ;
    	end
    10'b1000110001  :
    	begin
    	return 32'b10000000110110000110011 ;
    	end
    10'b1000110010  :
    	begin
    	return 32'b10000000101110110000101 ;
    	end
    10'b1000110011  :
    	begin
    	return 32'b10000000100111011100001 ;
    	end
    10'b1000110100  :
    	begin
    	return 32'b10000000100000001000111 ;
    	end
    10'b1000110101  :
    	begin
    	return 32'b10000000011000110110111 ;
    	end
    10'b1000110110  :
    	begin
    	return 32'b10000000010001100110001 ;
    	end
    10'b1000110111  :
    	begin
    	return 32'b10000000001010010110101 ;
    	end
    10'b1000111000  :
    	begin
    	return 32'b10000000000011001000010 ;
    	end
    10'b1000111001  :
    	begin
    	return 32'b1111111111011111011010 ;
    	end
    10'b1000111010  :
    	begin
    	return 32'b1111111110100101111011 ;
    	end
    10'b1000111011  :
    	begin
    	return 32'b1111111101101100100101 ;
    	end
    10'b1000111100  :
    	begin
    	return 32'b1111111100110011011010 ;
    	end
    10'b1000111101  :
    	begin
    	return 32'b1111111011111010010111 ;
    	end
    10'b1000111110  :
    	begin
    	return 32'b1111111011000001011111 ;
    	end
    10'b1000111111  :
    	begin
    	return 32'b1111111010001000110000 ;
    	end
    10'b1001000000  :
    	begin
    	return 32'b1111111001010000001010 ;
    	end
    10'b1001000001  :
    	begin
    	return 32'b1111111000010111101110 ;
    	end
    10'b1001000010  :
    	begin
    	return 32'b1111110111011111011011 ;
    	end
    10'b1001000011  :
    	begin
    	return 32'b1111110110100111010010 ;
    	end
    10'b1001000100  :
    	begin
    	return 32'b1111110101101111010001 ;
    	end
    10'b1001000101  :
    	begin
    	return 32'b1111110100110111011011 ;
    	end
    10'b1001000110  :
    	begin
    	return 32'b1111110011111111101101 ;
    	end
    10'b1001000111  :
    	begin
    	return 32'b1111110011001000001000 ;
    	end
    10'b1001001000  :
    	begin
    	return 32'b1111110010010000101101 ;
    	end
    10'b1001001001  :
    	begin
    	return 32'b1111110001011001011011 ;
    	end
    10'b1001001010  :
    	begin
    	return 32'b1111110000100010010001 ;
    	end
    10'b1001001011  :
    	begin
    	return 32'b1111101111101011010001 ;
    	end
    10'b1001001100  :
    	begin
    	return 32'b1111101110110100011010 ;
    	end
    10'b1001001101  :
    	begin
    	return 32'b1111101101111101101100 ;
    	end
    10'b1001001110  :
    	begin
    	return 32'b1111101101000111000110 ;
    	end
    10'b1001001111  :
    	begin
    	return 32'b1111101100010000101010 ;
    	end
    10'b1001010000  :
    	begin
    	return 32'b1111101011011010010110 ;
    	end
    10'b1001010001  :
    	begin
    	return 32'b1111101010100100001011 ;
    	end
    10'b1001010010  :
    	begin
    	return 32'b1111101001101110001001 ;
    	end
    10'b1001010011  :
    	begin
    	return 32'b1111101000111000010000 ;
    	end
    10'b1001010100  :
    	begin
    	return 32'b1111101000000010011111 ;
    	end
    10'b1001010101  :
    	begin
    	return 32'b1111100111001100110111 ;
    	end
    10'b1001010110  :
    	begin
    	return 32'b1111100110010111011000 ;
    	end
    10'b1001010111  :
    	begin
    	return 32'b1111100101100010000001 ;
    	end
    10'b1001011000  :
    	begin
    	return 32'b1111100100101100110010 ;
    	end
    10'b1001011001  :
    	begin
    	return 32'b1111100011110111101101 ;
    	end
    10'b1001011010  :
    	begin
    	return 32'b1111100011000010101111 ;
    	end
    10'b1001011011  :
    	begin
    	return 32'b1111100010001101111010 ;
    	end
    10'b1001011100  :
    	begin
    	return 32'b1111100001011001001110 ;
    	end
    10'b1001011101  :
    	begin
    	return 32'b1111100000100100101010 ;
    	end
    10'b1001011110  :
    	begin
    	return 32'b1111011111110000001110 ;
    	end
    10'b1001011111  :
    	begin
    	return 32'b1111011110111011111010 ;
    	end
    10'b1001100000  :
    	begin
    	return 32'b1111011110000111101111 ;
    	end
    10'b1001100001  :
    	begin
    	return 32'b1111011101010011101100 ;
    	end
    10'b1001100010  :
    	begin
    	return 32'b1111011100011111110001 ;
    	end
    10'b1001100011  :
    	begin
    	return 32'b1111011011101011111110 ;
    	end
    10'b1001100100  :
    	begin
    	return 32'b1111011010111000010100 ;
    	end
    10'b1001100101  :
    	begin
    	return 32'b1111011010000100110001 ;
    	end
    10'b1001100110  :
    	begin
    	return 32'b1111011001010001010111 ;
    	end
    10'b1001100111  :
    	begin
    	return 32'b1111011000011110000101 ;
    	end
    10'b1001101000  :
    	begin
    	return 32'b1111010111101010111010 ;
    	end
    10'b1001101001  :
    	begin
    	return 32'b1111010110110111111000 ;
    	end
    10'b1001101010  :
    	begin
    	return 32'b1111010110000100111101 ;
    	end
    10'b1001101011  :
    	begin
    	return 32'b1111010101010010001011 ;
    	end
    10'b1001101100  :
    	begin
    	return 32'b1111010100011111100000 ;
    	end
    10'b1001101101  :
    	begin
    	return 32'b1111010011101100111101 ;
    	end
    10'b1001101110  :
    	begin
    	return 32'b1111010010111010100010 ;
    	end
    10'b1001101111  :
    	begin
    	return 32'b1111010010001000001111 ;
    	end
    10'b1001110000  :
    	begin
    	return 32'b1111010001010110000011 ;
    	end
    10'b1001110001  :
    	begin
    	return 32'b1111010000100100000000 ;
    	end
    10'b1001110010  :
    	begin
    	return 32'b1111001111110010000011 ;
    	end
    10'b1001110011  :
    	begin
    	return 32'b1111001111000000001111 ;
    	end
    10'b1001110100  :
    	begin
    	return 32'b1111001110001110100010 ;
    	end
    10'b1001110101  :
    	begin
    	return 32'b1111001101011100111101 ;
    	end
    10'b1001110110  :
    	begin
    	return 32'b1111001100101011011111 ;
    	end
    10'b1001110111  :
    	begin
    	return 32'b1111001011111010001001 ;
    	end
    10'b1001111000  :
    	begin
    	return 32'b1111001011001000111010 ;
    	end
    10'b1001111001  :
    	begin
    	return 32'b1111001010010111110011 ;
    	end
    10'b1001111010  :
    	begin
    	return 32'b1111001001100110110011 ;
    	end
    10'b1001111011  :
    	begin
    	return 32'b1111001000110101111010 ;
    	end
    10'b1001111100  :
    	begin
    	return 32'b1111001000000101001001 ;
    	end
    10'b1001111101  :
    	begin
    	return 32'b1111000111010100100000 ;
    	end
    10'b1001111110  :
    	begin
    	return 32'b1111000110100011111101 ;
    	end
    10'b1001111111  :
    	begin
    	return 32'b1111000101110011100010 ;
    	end
    10'b1010000000  :
    	begin
    	return 32'b1111000101000011001111 ;
    	end
    10'b1010000001  :
    	begin
    	return 32'b1111000100010011000010 ;
    	end
    10'b1010000010  :
    	begin
    	return 32'b1111000011100010111101 ;
    	end
    10'b1010000011  :
    	begin
    	return 32'b1111000010110010111111 ;
    	end
    10'b1010000100  :
    	begin
    	return 32'b1111000010000011001000 ;
    	end
    10'b1010000101  :
    	begin
    	return 32'b1111000001010011011000 ;
    	end
    10'b1010000110  :
    	begin
    	return 32'b1111000000100011101111 ;
    	end
    10'b1010000111  :
    	begin
    	return 32'b1110111111110100001101 ;
    	end
    10'b1010001000  :
    	begin
    	return 32'b1110111111000100110011 ;
    	end
    10'b1010001001  :
    	begin
    	return 32'b1110111110010101011111 ;
    	end
    10'b1010001010  :
    	begin
    	return 32'b1110111101100110010010 ;
    	end
    10'b1010001011  :
    	begin
    	return 32'b1110111100110111001101 ;
    	end
    10'b1010001100  :
    	begin
    	return 32'b1110111100001000001110 ;
    	end
    10'b1010001101  :
    	begin
    	return 32'b1110111011011001010110 ;
    	end
    10'b1010001110  :
    	begin
    	return 32'b1110111010101010100101 ;
    	end
    10'b1010001111  :
    	begin
    	return 32'b1110111001111011111011 ;
    	end
    10'b1010010000  :
    	begin
    	return 32'b1110111001001101011000 ;
    	end
    10'b1010010001  :
    	begin
    	return 32'b1110111000011110111011 ;
    	end
    10'b1010010010  :
    	begin
    	return 32'b1110110111110000100101 ;
    	end
    10'b1010010011  :
    	begin
    	return 32'b1110110111000010010110 ;
    	end
    10'b1010010100  :
    	begin
    	return 32'b1110110110010100001110 ;
    	end
    10'b1010010101  :
    	begin
    	return 32'b1110110101100110001101 ;
    	end
    10'b1010010110  :
    	begin
    	return 32'b1110110100111000010010 ;
    	end
    10'b1010010111  :
    	begin
    	return 32'b1110110100001010011110 ;
    	end
    10'b1010011000  :
    	begin
    	return 32'b1110110011011100110000 ;
    	end
    10'b1010011001  :
    	begin
    	return 32'b1110110010101111001001 ;
    	end
    10'b1010011010  :
    	begin
    	return 32'b1110110010000001101001 ;
    	end
    10'b1010011011  :
    	begin
    	return 32'b1110110001010100001111 ;
    	end
    10'b1010011100  :
    	begin
    	return 32'b1110110000100110111100 ;
    	end
    10'b1010011101  :
    	begin
    	return 32'b1110101111111001101111 ;
    	end
    10'b1010011110  :
    	begin
    	return 32'b1110101111001100101001 ;
    	end
    10'b1010011111  :
    	begin
    	return 32'b1110101110011111101001 ;
    	end
    10'b1010100000  :
    	begin
    	return 32'b1110101101110010101111 ;
    	end
    10'b1010100001  :
    	begin
    	return 32'b1110101101000101111100 ;
    	end
    10'b1010100010  :
    	begin
    	return 32'b1110101100011001010000 ;
    	end
    10'b1010100011  :
    	begin
    	return 32'b1110101011101100101001 ;
    	end
    10'b1010100100  :
    	begin
    	return 32'b1110101011000000001001 ;
    	end
    10'b1010100101  :
    	begin
    	return 32'b1110101010010011110000 ;
    	end
    10'b1010100110  :
    	begin
    	return 32'b1110101001100111011100 ;
    	end
    10'b1010100111  :
    	begin
    	return 32'b1110101000111011001111 ;
    	end
    10'b1010101000  :
    	begin
    	return 32'b1110101000001111001000 ;
    	end
    10'b1010101001  :
    	begin
    	return 32'b1110100111100011001000 ;
    	end
    10'b1010101010  :
    	begin
    	return 32'b1110100110110111001101 ;
    	end
    10'b1010101011  :
    	begin
    	return 32'b1110100110001011011001 ;
    	end
    10'b1010101100  :
    	begin
    	return 32'b1110100101011111101011 ;
    	end
    10'b1010101101  :
    	begin
    	return 32'b1110100100110100000011 ;
    	end
    10'b1010101110  :
    	begin
    	return 32'b1110100100001000100001 ;
    	end
    10'b1010101111  :
    	begin
    	return 32'b1110100011011101000101 ;
    	end
    10'b1010110000  :
    	begin
    	return 32'b1110100010110001110000 ;
    	end
    10'b1010110001  :
    	begin
    	return 32'b1110100010000110100000 ;
    	end
    10'b1010110010  :
    	begin
    	return 32'b1110100001011011010110 ;
    	end
    10'b1010110011  :
    	begin
    	return 32'b1110100000110000010011 ;
    	end
    10'b1010110100  :
    	begin
    	return 32'b1110100000000101010101 ;
    	end
    10'b1010110101  :
    	begin
    	return 32'b1110011111011010011101 ;
    	end
    10'b1010110110  :
    	begin
    	return 32'b1110011110101111101100 ;
    	end
    10'b1010110111  :
    	begin
    	return 32'b1110011110000101000000 ;
    	end
    10'b1010111000  :
    	begin
    	return 32'b1110011101011010011010 ;
    	end
    10'b1010111001  :
    	begin
    	return 32'b1110011100101111111010 ;
    	end
    10'b1010111010  :
    	begin
    	return 32'b1110011100000101011111 ;
    	end
    10'b1010111011  :
    	begin
    	return 32'b1110011011011011001011 ;
    	end
    10'b1010111100  :
    	begin
    	return 32'b1110011010110000111100 ;
    	end
    10'b1010111101  :
    	begin
    	return 32'b1110011010000110110011 ;
    	end
    10'b1010111110  :
    	begin
    	return 32'b1110011001011100110000 ;
    	end
    10'b1010111111  :
    	begin
    	return 32'b1110011000110010110011 ;
    	end
    10'b1011000000  :
    	begin
    	return 32'b1110011000001000111011 ;
    	end
    10'b1011000001  :
    	begin
    	return 32'b1110010111011111001001 ;
    	end
    10'b1011000010  :
    	begin
    	return 32'b1110010110110101011101 ;
    	end
    10'b1011000011  :
    	begin
    	return 32'b1110010110001011110111 ;
    	end
    10'b1011000100  :
    	begin
    	return 32'b1110010101100010010110 ;
    	end
    10'b1011000101  :
    	begin
    	return 32'b1110010100111000111010 ;
    	end
    10'b1011000110  :
    	begin
    	return 32'b1110010100001111100101 ;
    	end
    10'b1011000111  :
    	begin
    	return 32'b1110010011100110010101 ;
    	end
    10'b1011001000  :
    	begin
    	return 32'b1110010010111101001010 ;
    	end
    10'b1011001001  :
    	begin
    	return 32'b1110010010010100000101 ;
    	end
    10'b1011001010  :
    	begin
    	return 32'b1110010001101011000101 ;
    	end
    10'b1011001011  :
    	begin
    	return 32'b1110010001000010001011 ;
    	end
    10'b1011001100  :
    	begin
    	return 32'b1110010000011001010111 ;
    	end
    10'b1011001101  :
    	begin
    	return 32'b1110001111110000101000 ;
    	end
    10'b1011001110  :
    	begin
    	return 32'b1110001111000111111110 ;
    	end
    10'b1011001111  :
    	begin
    	return 32'b1110001110011111011010 ;
    	end
    10'b1011010000  :
    	begin
    	return 32'b1110001101110110111011 ;
    	end
    10'b1011010001  :
    	begin
    	return 32'b1110001101001110100010 ;
    	end
    10'b1011010010  :
    	begin
    	return 32'b1110001100100110001110 ;
    	end
    10'b1011010011  :
    	begin
    	return 32'b1110001011111110000000 ;
    	end
    10'b1011010100  :
    	begin
    	return 32'b1110001011010101110110 ;
    	end
    10'b1011010101  :
    	begin
    	return 32'b1110001010101101110010 ;
    	end
    10'b1011010110  :
    	begin
    	return 32'b1110001010000101110100 ;
    	end
    10'b1011010111  :
    	begin
    	return 32'b1110001001011101111010 ;
    	end
    10'b1011011000  :
    	begin
    	return 32'b1110001000110110000110 ;
    	end
    10'b1011011001  :
    	begin
    	return 32'b1110001000001110010111 ;
    	end
    10'b1011011010  :
    	begin
    	return 32'b1110000111100110101110 ;
    	end
    10'b1011011011  :
    	begin
    	return 32'b1110000110111111001001 ;
    	end
    10'b1011011100  :
    	begin
    	return 32'b1110000110010111101010 ;
    	end
    10'b1011011101  :
    	begin
    	return 32'b1110000101110000010000 ;
    	end
    10'b1011011110  :
    	begin
    	return 32'b1110000101001000111011 ;
    	end
    10'b1011011111  :
    	begin
    	return 32'b1110000100100001101011 ;
    	end
    10'b1011100000  :
    	begin
    	return 32'b1110000011111010100000 ;
    	end
    10'b1011100001  :
    	begin
    	return 32'b1110000011010011011011 ;
    	end
    10'b1011100010  :
    	begin
    	return 32'b1110000010101100011010 ;
    	end
    10'b1011100011  :
    	begin
    	return 32'b1110000010000101011111 ;
    	end
    10'b1011100100  :
    	begin
    	return 32'b1110000001011110101001 ;
    	end
    10'b1011100101  :
    	begin
    	return 32'b1110000000110111110111 ;
    	end
    10'b1011100110  :
    	begin
    	return 32'b1110000000010001001011 ;
    	end
    10'b1011100111  :
    	begin
    	return 32'b1101111111101010100100 ;
    	end
    10'b1011101000  :
    	begin
    	return 32'b1101111111000100000001 ;
    	end
    10'b1011101001  :
    	begin
    	return 32'b1101111110011101100100 ;
    	end
    10'b1011101010  :
    	begin
    	return 32'b1101111101110111001100 ;
    	end
    10'b1011101011  :
    	begin
    	return 32'b1101111101010000111000 ;
    	end
    10'b1011101100  :
    	begin
    	return 32'b1101111100101010101010 ;
    	end
    10'b1011101101  :
    	begin
    	return 32'b1101111100000100100000 ;
    	end
    10'b1011101110  :
    	begin
    	return 32'b1101111011011110011011 ;
    	end
    10'b1011101111  :
    	begin
    	return 32'b1101111010111000011011 ;
    	end
    10'b1011110000  :
    	begin
    	return 32'b1101111010010010100000 ;
    	end
    10'b1011110001  :
    	begin
    	return 32'b1101111001101100101010 ;
    	end
    10'b1011110010  :
    	begin
    	return 32'b1101111001000110111001 ;
    	end
    10'b1011110011  :
    	begin
    	return 32'b1101111000100001001100 ;
    	end
    10'b1011110100  :
    	begin
    	return 32'b1101110111111011100100 ;
    	end
    10'b1011110101  :
    	begin
    	return 32'b1101110111010110000001 ;
    	end
    10'b1011110110  :
    	begin
    	return 32'b1101110110110000100011 ;
    	end
    10'b1011110111  :
    	begin
    	return 32'b1101110110001011001010 ;
    	end
    10'b1011111000  :
    	begin
    	return 32'b1101110101100101110101 ;
    	end
    10'b1011111001  :
    	begin
    	return 32'b1101110101000000100101 ;
    	end
    10'b1011111010  :
    	begin
    	return 32'b1101110100011011011001 ;
    	end
    10'b1011111011  :
    	begin
    	return 32'b1101110011110110010011 ;
    	end
    10'b1011111100  :
    	begin
    	return 32'b1101110011010001010001 ;
    	end
    10'b1011111101  :
    	begin
    	return 32'b1101110010101100010011 ;
    	end
    10'b1011111110  :
    	begin
    	return 32'b1101110010000111011010 ;
    	end
    10'b1011111111  :
    	begin
    	return 32'b1101110001100010100110 ;
    	end
    10'b1100000000  :
    	begin
    	return 32'b1101110000111101110111 ;
    	end
    10'b1100000001  :
    	begin
    	return 32'b1101110000011001001100 ;
    	end
    10'b1100000010  :
    	begin
    	return 32'b1101101111110100100101 ;
    	end
    10'b1100000011  :
    	begin
    	return 32'b1101101111010000000100 ;
    	end
    10'b1100000100  :
    	begin
    	return 32'b1101101110101011100110 ;
    	end
    10'b1100000101  :
    	begin
    	return 32'b1101101110000111001110 ;
    	end
    10'b1100000110  :
    	begin
    	return 32'b1101101101100010111001 ;
    	end
    10'b1100000111  :
    	begin
    	return 32'b1101101100111110101010 ;
    	end
    10'b1100001000  :
    	begin
    	return 32'b1101101100011010011110 ;
    	end
    10'b1100001001  :
    	begin
    	return 32'b1101101011110110011000 ;
    	end
    10'b1100001010  :
    	begin
    	return 32'b1101101011010010010101 ;
    	end
    10'b1100001011  :
    	begin
    	return 32'b1101101010101110010111 ;
    	end
    10'b1100001100  :
    	begin
    	return 32'b1101101010001010011110 ;
    	end
    10'b1100001101  :
    	begin
    	return 32'b1101101001100110101001 ;
    	end
    10'b1100001110  :
    	begin
    	return 32'b1101101001000010111000 ;
    	end
    10'b1100001111  :
    	begin
    	return 32'b1101101000011111001100 ;
    	end
    10'b1100010000  :
    	begin
    	return 32'b1101100111111011100100 ;
    	end
    10'b1100010001  :
    	begin
    	return 32'b1101100111011000000001 ;
    	end
    10'b1100010010  :
    	begin
    	return 32'b1101100110110100100001 ;
    	end
    10'b1100010011  :
    	begin
    	return 32'b1101100110010001000111 ;
    	end
    10'b1100010100  :
    	begin
    	return 32'b1101100101101101110000 ;
    	end
    10'b1100010101  :
    	begin
    	return 32'b1101100101001010011110 ;
    	end
    10'b1100010110  :
    	begin
    	return 32'b1101100100100111010000 ;
    	end
    10'b1100010111  :
    	begin
    	return 32'b1101100100000100000110 ;
    	end
    10'b1100011000  :
    	begin
    	return 32'b1101100011100001000001 ;
    	end
    10'b1100011001  :
    	begin
    	return 32'b1101100010111110000000 ;
    	end
    10'b1100011010  :
    	begin
    	return 32'b1101100010011011000011 ;
    	end
    10'b1100011011  :
    	begin
    	return 32'b1101100001111000001010 ;
    	end
    10'b1100011100  :
    	begin
    	return 32'b1101100001010101010110 ;
    	end
    10'b1100011101  :
    	begin
    	return 32'b1101100000110010100101 ;
    	end
    10'b1100011110  :
    	begin
    	return 32'b1101100000001111111001 ;
    	end
    10'b1100011111  :
    	begin
    	return 32'b1101011111101101010001 ;
    	end
    10'b1100100000  :
    	begin
    	return 32'b1101011111001010101101 ;
    	end
    10'b1100100001  :
    	begin
    	return 32'b1101011110101000001110 ;
    	end
    10'b1100100010  :
    	begin
    	return 32'b1101011110000101110010 ;
    	end
    10'b1100100011  :
    	begin
    	return 32'b1101011101100011011011 ;
    	end
    10'b1100100100  :
    	begin
    	return 32'b1101011101000001001000 ;
    	end
    10'b1100100101  :
    	begin
    	return 32'b1101011100011110111000 ;
    	end
    10'b1100100110  :
    	begin
    	return 32'b1101011011111100101101 ;
    	end
    10'b1100100111  :
    	begin
    	return 32'b1101011011011010100110 ;
    	end
    10'b1100101000  :
    	begin
    	return 32'b1101011010111000100011 ;
    	end
    10'b1100101001  :
    	begin
    	return 32'b1101011010010110100100 ;
    	end
    10'b1100101010  :
    	begin
    	return 32'b1101011001110100101001 ;
    	end
    10'b1100101011  :
    	begin
    	return 32'b1101011001010010110010 ;
    	end
    10'b1100101100  :
    	begin
    	return 32'b1101011000110001000000 ;
    	end
    10'b1100101101  :
    	begin
    	return 32'b1101011000001111010001 ;
    	end
    10'b1100101110  :
    	begin
    	return 32'b1101010111101101100110 ;
    	end
    10'b1100101111  :
    	begin
    	return 32'b1101010111001011111111 ;
    	end
    10'b1100110000  :
    	begin
    	return 32'b1101010110101010011100 ;
    	end
    10'b1100110001  :
    	begin
    	return 32'b1101010110001000111101 ;
    	end
    10'b1100110010  :
    	begin
    	return 32'b1101010101100111100010 ;
    	end
    10'b1100110011  :
    	begin
    	return 32'b1101010101000110001010 ;
    	end
    10'b1100110100  :
    	begin
    	return 32'b1101010100100100110111 ;
    	end
    10'b1100110101  :
    	begin
    	return 32'b1101010100000011101000 ;
    	end
    10'b1100110110  :
    	begin
    	return 32'b1101010011100010011100 ;
    	end
    10'b1100110111  :
    	begin
    	return 32'b1101010011000001010100 ;
    	end
    10'b1100111000  :
    	begin
    	return 32'b1101010010100000010001 ;
    	end
    10'b1100111001  :
    	begin
    	return 32'b1101010001111111010001 ;
    	end
    10'b1100111010  :
    	begin
    	return 32'b1101010001011110010101 ;
    	end
    10'b1100111011  :
    	begin
    	return 32'b1101010000111101011100 ;
    	end
    10'b1100111100  :
    	begin
    	return 32'b1101010000011100101000 ;
    	end
    10'b1100111101  :
    	begin
    	return 32'b1101001111111011110111 ;
    	end
    10'b1100111110  :
    	begin
    	return 32'b1101001111011011001010 ;
    	end
    10'b1100111111  :
    	begin
    	return 32'b1101001110111010100001 ;
    	end
    10'b1101000000  :
    	begin
    	return 32'b1101001110011001111100 ;
    	end
    10'b1101000001  :
    	begin
    	return 32'b1101001101111001011010 ;
    	end
    10'b1101000010  :
    	begin
    	return 32'b1101001101011000111100 ;
    	end
    10'b1101000011  :
    	begin
    	return 32'b1101001100111000100010 ;
    	end
    10'b1101000100  :
    	begin
    	return 32'b1101001100011000001100 ;
    	end
    10'b1101000101  :
    	begin
    	return 32'b1101001011110111111001 ;
    	end
    10'b1101000110  :
    	begin
    	return 32'b1101001011010111101010 ;
    	end
    10'b1101000111  :
    	begin
    	return 32'b1101001010110111011111 ;
    	end
    10'b1101001000  :
    	begin
    	return 32'b1101001010010111010111 ;
    	end
    10'b1101001001  :
    	begin
    	return 32'b1101001001110111010011 ;
    	end
    10'b1101001010  :
    	begin
    	return 32'b1101001001010111010011 ;
    	end
    10'b1101001011  :
    	begin
    	return 32'b1101001000110111010110 ;
    	end
    10'b1101001100  :
    	begin
    	return 32'b1101001000010111011101 ;
    	end
    10'b1101001101  :
    	begin
    	return 32'b1101000111110111101000 ;
    	end
    10'b1101001110  :
    	begin
    	return 32'b1101000111010111110110 ;
    	end
    10'b1101001111  :
    	begin
    	return 32'b1101000110111000001000 ;
    	end
    10'b1101010000  :
    	begin
    	return 32'b1101000110011000011110 ;
    	end
    10'b1101010001  :
    	begin
    	return 32'b1101000101111000110111 ;
    	end
    10'b1101010010  :
    	begin
    	return 32'b1101000101011001010011 ;
    	end
    10'b1101010011  :
    	begin
    	return 32'b1101000100111001110011 ;
    	end
    10'b1101010100  :
    	begin
    	return 32'b1101000100011010010111 ;
    	end
    10'b1101010101  :
    	begin
    	return 32'b1101000011111010111110 ;
    	end
    10'b1101010110  :
    	begin
    	return 32'b1101000011011011101001 ;
    	end
    10'b1101010111  :
    	begin
    	return 32'b1101000010111100010111 ;
    	end
    10'b1101011000  :
    	begin
    	return 32'b1101000010011101001001 ;
    	end
    10'b1101011001  :
    	begin
    	return 32'b1101000001111101111110 ;
    	end
    10'b1101011010  :
    	begin
    	return 32'b1101000001011110110111 ;
    	end
    10'b1101011011  :
    	begin
    	return 32'b1101000000111111110011 ;
    	end
    10'b1101011100  :
    	begin
    	return 32'b1101000000100000110011 ;
    	end
    10'b1101011101  :
    	begin
    	return 32'b1101000000000001110110 ;
    	end
    10'b1101011110  :
    	begin
    	return 32'b1100111111100010111101 ;
    	end
    10'b1101011111  :
    	begin
    	return 32'b1100111111000100000111 ;
    	end
    10'b1101100000  :
    	begin
    	return 32'b1100111110100101010101 ;
    	end
    10'b1101100001  :
    	begin
    	return 32'b1100111110000110100110 ;
    	end
    10'b1101100010  :
    	begin
    	return 32'b1100111101100111111010 ;
    	end
    10'b1101100011  :
    	begin
    	return 32'b1100111101001001010010 ;
    	end
    10'b1101100100  :
    	begin
    	return 32'b1100111100101010101101 ;
    	end
    10'b1101100101  :
    	begin
    	return 32'b1100111100001100001011 ;
    	end
    10'b1101100110  :
    	begin
    	return 32'b1100111011101101101101 ;
    	end
    10'b1101100111  :
    	begin
    	return 32'b1100111011001111010010 ;
    	end
    10'b1101101000  :
    	begin
    	return 32'b1100111010110000111011 ;
    	end
    10'b1101101001  :
    	begin
    	return 32'b1100111010010010100111 ;
    	end
    10'b1101101010  :
    	begin
    	return 32'b1100111001110100010110 ;
    	end
    10'b1101101011  :
    	begin
    	return 32'b1100111001010110001001 ;
    	end
    10'b1101101100  :
    	begin
    	return 32'b1100111000110111111110 ;
    	end
    10'b1101101101  :
    	begin
    	return 32'b1100111000011001111000 ;
    	end
    10'b1101101110  :
    	begin
    	return 32'b1100110111111011110100 ;
    	end
    10'b1101101111  :
    	begin
    	return 32'b1100110111011101110100 ;
    	end
    10'b1101110000  :
    	begin
    	return 32'b1100110110111111110111 ;
    	end
    10'b1101110001  :
    	begin
    	return 32'b1100110110100001111101 ;
    	end
    10'b1101110010  :
    	begin
    	return 32'b1100110110000100000111 ;
    	end
    10'b1101110011  :
    	begin
    	return 32'b1100110101100110010011 ;
    	end
    10'b1101110100  :
    	begin
    	return 32'b1100110101001000100011 ;
    	end
    10'b1101110101  :
    	begin
    	return 32'b1100110100101010110111 ;
    	end
    10'b1101110110  :
    	begin
    	return 32'b1100110100001101001101 ;
    	end
    10'b1101110111  :
    	begin
    	return 32'b1100110011101111100111 ;
    	end
    10'b1101111000  :
    	begin
    	return 32'b1100110011010010000100 ;
    	end
    10'b1101111001  :
    	begin
    	return 32'b1100110010110100100100 ;
    	end
    10'b1101111010  :
    	begin
    	return 32'b1100110010010111000111 ;
    	end
    10'b1101111011  :
    	begin
    	return 32'b1100110001111001101110 ;
    	end
    10'b1101111100  :
    	begin
    	return 32'b1100110001011100010111 ;
    	end
    10'b1101111101  :
    	begin
    	return 32'b1100110000111111000100 ;
    	end
    10'b1101111110  :
    	begin
    	return 32'b1100110000100001110100 ;
    	end
    10'b1101111111  :
    	begin
    	return 32'b1100110000000100100111 ;
    	end
    10'b1110000000  :
    	begin
    	return 32'b1100101111100111011101 ;
    	end
    10'b1110000001  :
    	begin
    	return 32'b1100101111001010010110 ;
    	end
    10'b1110000010  :
    	begin
    	return 32'b1100101110101101010011 ;
    	end
    10'b1110000011  :
    	begin
    	return 32'b1100101110010000010010 ;
    	end
    10'b1110000100  :
    	begin
    	return 32'b1100101101110011010101 ;
    	end
    10'b1110000101  :
    	begin
    	return 32'b1100101101010110011011 ;
    	end
    10'b1110000110  :
    	begin
    	return 32'b1100101100111001100011 ;
    	end
    10'b1110000111  :
    	begin
    	return 32'b1100101100011100101111 ;
    	end
    10'b1110001000  :
    	begin
    	return 32'b1100101011111111111110 ;
    	end
    10'b1110001001  :
    	begin
    	return 32'b1100101011100011010000 ;
    	end
    10'b1110001010  :
    	begin
    	return 32'b1100101011000110100101 ;
    	end
    10'b1110001011  :
    	begin
    	return 32'b1100101010101001111101 ;
    	end
    10'b1110001100  :
    	begin
    	return 32'b1100101010001101011000 ;
    	end
    10'b1110001101  :
    	begin
    	return 32'b1100101001110000110110 ;
    	end
    10'b1110001110  :
    	begin
    	return 32'b1100101001010100010111 ;
    	end
    10'b1110001111  :
    	begin
    	return 32'b1100101000110111111011 ;
    	end
    10'b1110010000  :
    	begin
    	return 32'b1100101000011011100010 ;
    	end
    10'b1110010001  :
    	begin
    	return 32'b1100100111111111001100 ;
    	end
    10'b1110010010  :
    	begin
    	return 32'b1100100111100010111010 ;
    	end
    10'b1110010011  :
    	begin
    	return 32'b1100100111000110101010 ;
    	end
    10'b1110010100  :
    	begin
    	return 32'b1100100110101010011101 ;
    	end
    10'b1110010101  :
    	begin
    	return 32'b1100100110001110010010 ;
    	end
    10'b1110010110  :
    	begin
    	return 32'b1100100101110010001011 ;
    	end
    10'b1110010111  :
    	begin
    	return 32'b1100100101010110000111 ;
    	end
    10'b1110011000  :
    	begin
    	return 32'b1100100100111010000110 ;
    	end
    10'b1110011001  :
    	begin
    	return 32'b1100100100011110001000 ;
    	end
    10'b1110011010  :
    	begin
    	return 32'b1100100100000010001100 ;
    	end
    10'b1110011011  :
    	begin
    	return 32'b1100100011100110010100 ;
    	end
    10'b1110011100  :
    	begin
    	return 32'b1100100011001010011110 ;
    	end
    10'b1110011101  :
    	begin
    	return 32'b1100100010101110101011 ;
    	end
    10'b1110011110  :
    	begin
    	return 32'b1100100010010010111011 ;
    	end
    10'b1110011111  :
    	begin
    	return 32'b1100100001110111001110 ;
    	end
    10'b1110100000  :
    	begin
    	return 32'b1100100001011011100100 ;
    	end
    10'b1110100001  :
    	begin
    	return 32'b1100100000111111111101 ;
    	end
    10'b1110100010  :
    	begin
    	return 32'b1100100000100100011001 ;
    	end
    10'b1110100011  :
    	begin
    	return 32'b1100100000001000110111 ;
    	end
    10'b1110100100  :
    	begin
    	return 32'b1100011111101101011000 ;
    	end
    10'b1110100101  :
    	begin
    	return 32'b1100011111010001111101 ;
    	end
    10'b1110100110  :
    	begin
    	return 32'b1100011110110110100011 ;
    	end
    10'b1110100111  :
    	begin
    	return 32'b1100011110011011001101 ;
    	end
    10'b1110101000  :
    	begin
    	return 32'b1100011101111111111010 ;
    	end
    10'b1110101001  :
    	begin
    	return 32'b1100011101100100101001 ;
    	end
    10'b1110101010  :
    	begin
    	return 32'b1100011101001001011011 ;
    	end
    10'b1110101011  :
    	begin
    	return 32'b1100011100101110010000 ;
    	end
    10'b1110101100  :
    	begin
    	return 32'b1100011100010011001000 ;
    	end
    10'b1110101101  :
    	begin
    	return 32'b1100011011111000000010 ;
    	end
    10'b1110101110  :
    	begin
    	return 32'b1100011011011101000000 ;
    	end
    10'b1110101111  :
    	begin
    	return 32'b1100011011000010000000 ;
    	end
    10'b1110110000  :
    	begin
    	return 32'b1100011010100111000010 ;
    	end
    10'b1110110001  :
    	begin
    	return 32'b1100011010001100001000 ;
    	end
    10'b1110110010  :
    	begin
    	return 32'b1100011001110001010000 ;
    	end
    10'b1110110011  :
    	begin
    	return 32'b1100011001010110011011 ;
    	end
    10'b1110110100  :
    	begin
    	return 32'b1100011000111011101001 ;
    	end
    10'b1110110101  :
    	begin
    	return 32'b1100011000100000111001 ;
    	end
    10'b1110110110  :
    	begin
    	return 32'b1100011000000110001100 ;
    	end
    10'b1110110111  :
    	begin
    	return 32'b1100010111101011100010 ;
    	end
    10'b1110111000  :
    	begin
    	return 32'b1100010111010000111010 ;
    	end
    10'b1110111001  :
    	begin
    	return 32'b1100010110110110010101 ;
    	end
    10'b1110111010  :
    	begin
    	return 32'b1100010110011011110011 ;
    	end
    10'b1110111011  :
    	begin
    	return 32'b1100010110000001010100 ;
    	end
    10'b1110111100  :
    	begin
    	return 32'b1100010101100110110111 ;
    	end
    10'b1110111101  :
    	begin
    	return 32'b1100010101001100011100 ;
    	end
    10'b1110111110  :
    	begin
    	return 32'b1100010100110010000101 ;
    	end
    10'b1110111111  :
    	begin
    	return 32'b1100010100010111110000 ;
    	end
    10'b1111000000  :
    	begin
    	return 32'b1100010011111101011110 ;
    	end
    10'b1111000001  :
    	begin
    	return 32'b1100010011100011001110 ;
    	end
    10'b1111000010  :
    	begin
    	return 32'b1100010011001001000001 ;
    	end
    10'b1111000011  :
    	begin
    	return 32'b1100010010101110110110 ;
    	end
    10'b1111000100  :
    	begin
    	return 32'b1100010010010100101111 ;
    	end
    10'b1111000101  :
    	begin
    	return 32'b1100010001111010101001 ;
    	end
    10'b1111000110  :
    	begin
    	return 32'b1100010001100000100111 ;
    	end
    10'b1111000111  :
    	begin
    	return 32'b1100010001000110100111 ;
    	end
    10'b1111001000  :
    	begin
    	return 32'b1100010000101100101001 ;
    	end
    10'b1111001001  :
    	begin
    	return 32'b1100010000010010101110 ;
    	end
    10'b1111001010  :
    	begin
    	return 32'b1100001111111000110110 ;
    	end
    10'b1111001011  :
    	begin
    	return 32'b1100001111011111000000 ;
    	end
    10'b1111001100  :
    	begin
    	return 32'b1100001111000101001101 ;
    	end
    10'b1111001101  :
    	begin
    	return 32'b1100001110101011011100 ;
    	end
    10'b1111001110  :
    	begin
    	return 32'b1100001110010001101110 ;
    	end
    10'b1111001111  :
    	begin
    	return 32'b1100001101111000000011 ;
    	end
    10'b1111010000  :
    	begin
    	return 32'b1100001101011110011001 ;
    	end
    10'b1111010001  :
    	begin
    	return 32'b1100001101000100110011 ;
    	end
    10'b1111010010  :
    	begin
    	return 32'b1100001100101011001111 ;
    	end
    10'b1111010011  :
    	begin
    	return 32'b1100001100010001101101 ;
    	end
    10'b1111010100  :
    	begin
    	return 32'b1100001011111000001110 ;
    	end
    10'b1111010101  :
    	begin
    	return 32'b1100001011011110110010 ;
    	end
    10'b1111010110  :
    	begin
    	return 32'b1100001011000101011000 ;
    	end
    10'b1111010111  :
    	begin
    	return 32'b1100001010101100000000 ;
    	end
    10'b1111011000  :
    	begin
    	return 32'b1100001010010010101011 ;
    	end
    10'b1111011001  :
    	begin
    	return 32'b1100001001111001011000 ;
    	end
    10'b1111011010  :
    	begin
    	return 32'b1100001001100000001000 ;
    	end
    10'b1111011011  :
    	begin
    	return 32'b1100001001000110111011 ;
    	end
    10'b1111011100  :
    	begin
    	return 32'b1100001000101101101111 ;
    	end
    10'b1111011101  :
    	begin
    	return 32'b1100001000010100100111 ;
    	end
    10'b1111011110  :
    	begin
    	return 32'b1100000111111011100000 ;
    	end
    10'b1111011111  :
    	begin
    	return 32'b1100000111100010011100 ;
    	end
    10'b1111100000  :
    	begin
    	return 32'b1100000111001001011011 ;
    	end
    10'b1111100001  :
    	begin
    	return 32'b1100000110110000011100 ;
    	end
    10'b1111100010  :
    	begin
    	return 32'b1100000110010111011111 ;
    	end
    10'b1111100011  :
    	begin
    	return 32'b1100000101111110100101 ;
    	end
    10'b1111100100  :
    	begin
    	return 32'b1100000101100101101101 ;
    	end
    10'b1111100101  :
    	begin
    	return 32'b1100000101001100110111 ;
    	end
    10'b1111100110  :
    	begin
    	return 32'b1100000100110100000100 ;
    	end
    10'b1111100111  :
    	begin
    	return 32'b1100000100011011010011 ;
    	end
    10'b1111101000  :
    	begin
    	return 32'b1100000100000010100101 ;
    	end
    10'b1111101001  :
    	begin
    	return 32'b1100000011101001111001 ;
    	end
    10'b1111101010  :
    	begin
    	return 32'b1100000011010001010000 ;
    	end
    10'b1111101011  :
    	begin
    	return 32'b1100000010111000101000 ;
    	end
    10'b1111101100  :
    	begin
    	return 32'b1100000010100000000100 ;
    	end
    10'b1111101101  :
    	begin
    	return 32'b1100000010000111100001 ;
    	end
    10'b1111101110  :
    	begin
    	return 32'b1100000001101111000001 ;
    	end
    10'b1111101111  :
    	begin
    	return 32'b1100000001010110100011 ;
    	end
    10'b1111110000  :
    	begin
    	return 32'b1100000000111110000111 ;
    	end
    10'b1111110001  :
    	begin
    	return 32'b1100000000100101101110 ;
    	end
    10'b1111110010  :
    	begin
    	return 32'b1100000000001101010111 ;
    	end
    10'b1111110011  :
    	begin
    	return 32'b1011111111110101000011 ;
    	end
    10'b1111110100  :
    	begin
    	return 32'b1011111111011100110001 ;
    	end
    10'b1111110101  :
    	begin
    	return 32'b1011111111000100100001 ;
    	end
    10'b1111110110  :
    	begin
    	return 32'b1011111110101100010011 ;
    	end
    10'b1111110111  :
    	begin
    	return 32'b1011111110010100001000 ;
    	end
    10'b1111111000  :
    	begin
    	return 32'b1011111101111011111111 ;
    	end
    10'b1111111001  :
    	begin
    	return 32'b1011111101100011111000 ;
    	end
    10'b1111111010  :
    	begin
    	return 32'b1011111101001011110011 ;
    	end
    10'b1111111011  :
    	begin
    	return 32'b1011111100110011110001 ;
    	end
    10'b1111111100  :
    	begin
    	return 32'b1011111100011011110001 ;
    	end
    10'b1111111101  :
    	begin
    	return 32'b1011111100000011110011 ;
    	end
    10'b1111111110  :
    	begin
    	return 32'b1011111011101011111000 ;
    	end
    10'b1111111111  :
    	begin
    	return 32'b1011111011010011111110 ;
    	end
    default :
    	begin
    	return 32'b1011111011010011111110 ;
    	end
    endcase
endfunction



//------------------------------------------------------------------------------
// Write register
//------------------------------------------------------------------------------
always_comb
begin
  o__read_1  = state_1;
  o__read_2  = state_2;
  n_pkt_1 = lut(lut(lut(pkt_1 % 1024)));
  if (rel_op(mux2(state_1, state_2, sel_1) + mux2(n_pkt_1, pkt_2, sel_2) - mux2(n_pkt_1, pkt_2, sel_3), cons_1, rel_op1))
  begin
   if (rel_op(mux2(state_1, state_2, sel_4) + mux2(n_pkt_1, pkt_2, sel_5)   - mux2(n_pkt_1, pkt_2, sel_6), cons_2, rel_op2))
   begin
    o__write_1 = mux2(state_1, 0, sel_7)  + mux3(n_pkt_1, pkt_2, cons_3, sel_8)   - mux3(n_pkt_1, pkt_2, cons_4, sel_9);
    o__write_2 = mux2(state_2, 0, sel_22) + mux3(n_pkt_1, pkt_2, cons_12, sel_23) - mux3(n_pkt_1, pkt_2, cons_13, sel_24);
   end
   else
   begin
    o__write_1 = mux2(state_1, 0, sel_10) + mux3(n_pkt_1, pkt_2, cons_5, sel_11)  - mux3(n_pkt_1, pkt_2, cons_6, sel_12);
    o__write_2 = mux2(state_2, 0, sel_25) + mux3(n_pkt_1, pkt_2, cons_14, sel_26) - mux3(n_pkt_1, pkt_2, cons_15, sel_27);
   end
  end
  else
  begin
   if (rel_op(mux2(state_1, state_2, sel_13) + mux2(n_pkt_1, pkt_2, sel_14) - mux2(n_pkt_1, pkt_2, sel_15), cons_7, rel_op3))
   begin
    o__write_1 = mux2(state_1, 0, sel_16) + mux3(n_pkt_1, pkt_2, cons_8, sel_17)  - mux3(n_pkt_1, pkt_2, cons_9, sel_18);
    o__write_2 = mux2(state_2, 0, sel_28) + mux3(n_pkt_1, pkt_2, cons_16, sel_29) - mux3(n_pkt_1, pkt_2, cons_17, sel_30);
   end
   else
   begin
    o__write_1 = mux2(state_1, 0, sel_19) + mux3(n_pkt_1, pkt_2, cons_10, sel_20) - mux3(n_pkt_1, pkt_2, cons_11, sel_21);
    o__write_2 = mux2(state_2, 0, sel_31) + mux3(n_pkt_1, pkt_2, cons_18, sel_32) - mux3(n_pkt_1, pkt_2, cons_19, sel_33);
   end
  end
end

//------------------------------------------------------------------------------
//
always_ff @ (posedge clk)
begin
  state_1 <= o__write_1;
  state_2 <= o__write_2;
end

endmodule
