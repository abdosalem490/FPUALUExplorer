/*refer to https://www.ijert.org/research/implementation-of-32-bit-adders-using-different-full-adders-IJERTV9IS100070.pdf*/
module CIA #(parameter size = 32)(A, B, CIN, SUM, COUT, OVF);

//inputs
input [size-1:0] A, B;
input CIN;

//outputs
output [size-1:0] SUM;
output COUT, OVF;

//temp wire
genvar i;
wire dummy;

wire [size-1:0] tempSum;
wire [(size>>2)-1:0] tempCOUT_IncAdd;
wire [(size>>2)-1:0] tempCin_RippleAdder;
wire [(size>>2)-1:0] tempCout_RippleAdder;

//assigning some constants
assign SUM[0] = tempSum[0];
assign SUM[1] = tempSum[1];
assign SUM[2] = tempSum[2];
assign SUM[3] = tempSum[3];
assign OVF = SUM[size-1] ^ A[size-1] & SUM[size-1] ^ B[size-1];

assign COUT = tempCOUT_IncAdd[(size>>2)-1];

assign tempCOUT_IncAdd[0] = tempCout_RippleAdder[0];

assign tempCin_RippleAdder[0] = CIN;

generate
for(i = 1; i < (size>>2); i = i + 1)
	assign tempCin_RippleAdder[i] = 0;
endgenerate	

/*creating blocks of ripple adder*/
generate
for (i = 0; i < (size >> 2); i = i + 1)
	RCA #(4) rippleAdder(A[((i+1)<<2)-1:i<<2], B[((i+1)<<2)-1:i<<2], tempCin_RippleAdder[i], tempSum[((i+1)<<2)-1:i<<2], tempCout_RippleAdder[i], dummy);
endgenerate	

/*creating blocks of incrementByOne using half adders*/
generate
for (i = 1; i < (size >> 2); i = i + 1)
	incrementByOne #(4) incByOneSt(tempSum[((i+1)<<2)-1:i<<2], tempCOUT_IncAdd[i-1], tempCout_RippleAdder[i], SUM[((i+1)<<2)-1:i<<2], tempCOUT_IncAdd[i]);
endgenerate	



endmodule




/*the block size is of 4 bits*/
module incrementByOne #(parameter size = 4)(A, CIN, ORG_COUT, SUM, COUT);
//inputs
input [size-1:0] A;
input CIN;
input ORG_COUT;

//outputs
output [size-1:0] SUM;
output COUT;

//temp data
genvar i;
wire [size:0]C;

//assigning some data
assign C[0] = CIN;
assign COUT = C[size] | ORG_COUT;

/*creating upper part*/
generate
for (i = 0; i < size; i = i + 1)
	HA HalfAdder(A[i], C[i], SUM[i], C[i+1]);
endgenerate	

endmodule