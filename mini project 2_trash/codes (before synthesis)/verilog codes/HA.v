module HA(A, B, SUM, COUT);

//inputs
input  A, B;

//outputs
output SUM, COUT;

/*logic of hald adder*/
assign SUM = A ^ B;
assign COUT = A & B;

endmodule
