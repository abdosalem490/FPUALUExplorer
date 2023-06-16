/*refer to https://www.youtube.com/watch?v=9lyqSVKbyz8 */
module CLA #(parameter size =32)(A, B, CIN, SUM, COUT, OVF);

//inputs
input [size-1:0]A, B;
input CIN;

//outputs
output [size-1:0] SUM;
output COUT, OVF;

// temp data
wire [size:0] Couts;
wire [size-1:0] Ps;
wire [size-1:0] Gs;
genvar i;

//important assigns
assign COUT = Couts[size-1];
assign Gs[0] = A[0] & B[0];
assign Ps[0] = A[0] ^ B[0];
assign Couts[0] = Gs[0] | (Ps[0] & CIN);
assign SUM[0] = A[0] ^ B[0] ^ CIN;
assign OVF = SUM[size-1] ^ A[size-1] & SUM[size-1] ^ B[size-1];

// generating G(i) and P(i) where G(i) = A(i) . B(i) and P(i) = A(i) ^ B(i)
generate
for (i = 1; i < size; i = i + 1)
begin
	assign Ps[i] = A[i] ^ B[i];
	assign Gs[i] = A[i] & B[i];
	assign Couts[i] = Gs[i] | (Ps[i] & Couts[i-1]); 
	assign SUM[i] = Couts[i-1] ^ A[i] ^ B[i];
end
endgenerate


endmodule