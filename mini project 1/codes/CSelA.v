/*refer to https://allaboutfpga.com/carry-select-adder-vhdl-code/ */
module CSelA #(parameter size = 32) (A, B, CIN, SUM, COUT, OVF);

//inputs
input [size-1:0] A, B;
input CIN;

//outputs
output [size-1:0] SUM;
output COUT, OVF;

//temp data
genvar i;
wire [size-1:0] tempSum_HIGH;
wire [size-1:0] tempSum_LOW;
wire [(size>>2)-1:0] tempCout_HIGH;
wire [(size>>2)-1:0] tempCout_LOW;
wire [(size>>2):0] tempC;
wire dummy1, dummy2;

//important assign
assign tempC[0] = CIN;
assign COUT = tempC[size>>2];
assign OVF = SUM[size-1] ^ A[size-1] & SUM[size-1] ^ B[size-1];

/*creating blocks of ripple adder*/
generate
for (i = 0; i < (size >> 2); i = i + 1)
begin
	RCA #(4) rippleAdder_HIGH(A[((i+1)<<2)-1:i<<2], B[((i+1)<<2)-1:i<<2], 1'b1, tempSum_HIGH[((i+1)<<2)-1:i<<2], tempCout_HIGH[i], dummy1);
	RCA #(4) rippleAdder_LOW (A[((i+1)<<2)-1:i<<2], B[((i+1)<<2)-1:i<<2], 1'b0, tempSum_LOW[((i+1)<<2)-1:i<<2], tempCout_LOW[i], dummy2);
end
endgenerate	

/*creating blocks of select logic*/
generate
for (i = 0; i < (size >> 2); i = i + 1)
	SelectLogic #(4) select(tempSum_HIGH[((i+1)<<2)-1:i<<2], tempSum_LOW[((i+1)<<2)-1:i<<2], tempCout_HIGH[i], tempCout_LOW[i], tempC[i], SUM[((i+1)<<2)-1:i<<2], tempC[i+1]);
endgenerate	


endmodule

module SelectLogic #(parameter size = 4) (HIGH_SUN, LOW_SUM, HIGH_C, LOW_C, CIN, SUM, COUT);

//inputs
input [size-1:0] HIGH_SUN, LOW_SUM;
input CIN, HIGH_C, LOW_C;

//outputs
output [size-1:0] SUM;
output COUT;

//important assigns
assign SUM = (CIN == 1) ? HIGH_SUN : LOW_SUM;
assign COUT = (CIN == 1) ? HIGH_C : LOW_C;

endmodule