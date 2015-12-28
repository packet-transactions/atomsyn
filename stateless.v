module rw(
    clk,

    pkt_1,
    pkt_2,
    pkt_3,

    o__write
);

// Parameters
parameter COUNT_WIDTH                   = 32;

// Input signals
input  logic [COUNT_WIDTH-1:0]          pkt_1;
input  logic [COUNT_WIDTH-1:0]          pkt_2;
input  logic [COUNT_WIDTH-1:0]          pkt_3;
input  logic [COUNT_WIDTH-1:0]          cons_1;
input  logic [3:0]                      opcode;

// Sequential elements
input  logic clk;

// Output signals
output logic [COUNT_WIDTH-1:0]          o__write;

//------------------------------------------------------------------------------
// Write register
//------------------------------------------------------------------------------
always_comb
begin
  case (opcode)
    // arithmetic
    4'd0 : o_write = (pkt_1 +  pkt_2);
    4'd1 : o_write = (pkt_1 -  pkt_2);
    // logical
    4'd2 : o_write = (pkt_1 &  pkt_2);
    4'd3 : o_write = (pkt_1 ^  pkt_2);
    4'd4 : o_write = (pkt_1 |  pkt_2);
    // constant arithmetic
    4'd5 : o_write = (pkt_1 +  cons_1);
    4'd6 : o_write = (pkt_1 -  cons_1);
    // relational
    4'd7 : o_write = (pkt_1 == pkt_2);
    4'd8 : o_write = (pkt_1 != pkt_2);
    4'd9 : o_write = (pkt_1 >= pkt_2);
    4'd10: o_write = (pkt_1 <  pkt_2);
    // shifts
    4'd11: o_write = (pkt_1 << cons_1);
    4'd12: o_write = (pkt_1 >> cons_1);
    // conditional
    4'd13: o_write = (pkt_1 ?  pkt_2 : pkt_3); 
  endcase
end

endmodule
