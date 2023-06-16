module CSKA #(parameter size = 32) (A, B, CIN, SUM, COUT, OVF);

//inputs
input [size-1:0] A, B;
input CIN;

//outputs
output [size-1:0] SUM;
output COUT, OVF;

//temp variables
genvar i;
wire [(size>>2):0] tempCin_Ripple;
wire [(size>>2)-1:0] tempCout_Ripple;
wire dummy;

//important assignments
assign tempCin_Ripple[0] = CIN;
assign COUT = tempCin_Ripple[(size>>2)];
assign OVF = SUM[size-1] ^ A[size-1] & SUM[size-1] ^ B[size-1];

//creating blocks ripple carry adder
generate
for (i = 0; i < (size >> 2); i = i + 1)
	RCA #(4) rippleAdder(A[((i+1)<<2)-1:i<<2], B[((i+1)<<2)-1:i<<2], tempCin_Ripple[i], SUM[((i+1)<<2)-1:i<<2], tempCout_Ripple[i], dummy);
endgenerate	

//creating blocks for skip logic
generate
for (i = 0; i < (size >> 2); i = i + 1)
	SkipLogicOR #(4) Skip(A[((i+1)<<2)-1:i<<2], B[((i+1)<<2)-1:i<<2], tempCin_Ripple[i], tempCout_Ripple[i], tempCin_Ripple[i+1]);
endgenerate	


endmodule



module SkipLogicOR#(parameter size = 4) (A, B, CIN, COUT_CURR, COUT);

//inputs
input [size-1:0] A, B;
input CIN, COUT_CURR;

//outputs
output COUT;

//dummy data
wire [size-1:0] tempSum;

//important assignments
assign tempSum =  A ^ B;
assign COUT = ((&tempSum) & CIN) | COUT_CURR;


endmodule
