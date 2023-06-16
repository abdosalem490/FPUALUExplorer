module RCA #(parameter size = 32)(A, B, CIN, SUM, COUT, OVF);

/*inputs*/
input [size-1:0] A,B;
input CIN;

/*outputs*/
output [size-1:0] SUM;
output COUT, OVF;

/*temp data*/
wire [size:0] C; /*for propagating carry*/
genvar i;		 /*for generating multiple FullAdder*/

/*refer to https://www.youtube.com/watch?v=b70ZQwci5sY*/
assign C[0] = CIN;
assign COUT = C[size];
assign OVF = SUM[size-1] ^ A[size-1] & SUM[size-1] ^ B[size-1];

/*the generate block*/
generate
for (i = 0; i < size; i = i + 1)
	FA FullAdder (A[i],B[i],C[i],SUM[i],C[i+1]);
endgenerate

endmodule