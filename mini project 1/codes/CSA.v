module CSA #(parameter size = 32)(A, B, C, SUM, COUT, OVF);

/*inputs*/
input [size-1:0] A, B, C;

/*outputs*/
output [size:0] SUM;
output COUT, OVF;

/*temp data*/
wire [size-1:0] COUT_WIRES;		/*upper_stage*/
wire [size-1:0] SUM_WIRES;		/*upper stage*/
wire dummy;						/*lower stage dummy wire with no usage*/
genvar i;

//important assigns
assign SUM[0] = SUM_WIRES[0];	/*the 0th bit of the sum*/
assign OVF = SUM[size] ^ A[size-1] & SUM[size] ^ B[size-1] & SUM[size] ^ C[size-1];

/*creating upper part*/
generate
for (i = 0; i < size; i = i + 1)
	FA FullAdder(A[i], B[i], C[i], SUM_WIRES[i], COUT_WIRES[i]);
endgenerate	

/*creating lower part*/
RCA #(size) RippleAdder ({1'b0, SUM_WIRES[size-1:1]}, COUT_WIRES, 1'b0, {dummy, SUM[size-1:1]}, COUT, dummy);

endmodule