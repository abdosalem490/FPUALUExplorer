module VA #(parameter size = 32)(A, B, CIN, SUM, COUT, OVF);

//inputs
input [size-1:0] A, B;
input CIN;

//outputs
output [size-1:0] SUM;
output COUT, OVF;
assign OVF = SUM[size-1] ^ A[size-1] & SUM[size-1] ^ B[size-1];

//adding the parameters
assign {COUT, SUM} = A + B + CIN;


endmodule