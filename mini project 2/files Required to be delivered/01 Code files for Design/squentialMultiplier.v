/*
resources:
    https://www.youtube.com/watch?v=_VlXf52nufA
    https://www.geeksforgeeks.org/sequential-binary-multiplier/
    https://www.youtube.com/watch?v=pDuEKDszwHs
*/

module sequentialMultiplier(Res, OVF, A, B, clk, reset, enable);

/*the inputs to be multiplies*/
input [31:0] A, B;
input clk, reset, enable;

/*the outputs from the multiplier*/
output wire [63:0] Res;
output wire OVF;        // overflow flag 


/*temp wires to handle negative case*/
wire [31:0] A_imm, B_imm;

/*registers for the actual logic of the circuit*/
reg [1:0] isNeg; // to test for the negatvity of the result isNeg[1] = A, isNeg[0] = B.
reg ready;  // to be able to take new input
reg [31:0] multiplier, multiplicand, accumulator; // the actual registers for calculation of the result
reg [4:0] counter;  // when size reaches number of bits then we rise the ready flag

wire [31:0] temp_accumulator;
wire [63:0] shiftedValue, Res_imm; 

/*important assigns*/
assign A_imm = (A[31]) ? (~A+1) : A;
assign B_imm = (B[31]) ? (~B+1) : B;
assign Res = (Res_imm != 0 && (isNeg[1] ^ isNeg[0])) ? -Res_imm : Res_imm;
assign OVF = Res[63] ^ isNeg[1] & Res[63] ^ isNeg[0];


/*making the temp wires for easier code */
assign Res_imm = {accumulator, multiplicand}; // the result 
assign temp_accumulator = multiplicand[0] ? accumulator + multiplier : accumulator; // choose whether A = A + M or not
/*shifting the temporary wires*/
assign shiftedValue[31:0] =  {temp_accumulator[0], multiplicand[31:1]};  
assign shiftedValue[63:32] =  {1'b0, temp_accumulator[31:1]};



/*making temporariers wires as "if" statements in the always block was prohibited by oasys */
wire [31:0] multiplier_in, multiplicand_in, accumulator_in;
wire [4:0] counter_in;
wire ready_in;
wire [1:0] isNeg_in;


assign multiplier_in = 		(reset) 					?	0						:	// reset the register
							(ready & enable) 			?	A_imm					:	// taking the input 
															multiplier				;	// mainting the value in any other condition


assign multiplicand_in = 	(reset) 					?	0						:	// reset the register
							(ready & enable) 			?	B_imm					:	// taking the input 
							(!ready) 					?	shiftedValue[31:0]		:	// applying the logic of sequential algorithm
															multiplicand			;	// mainting the value in any other condition


assign accumulator_in = 	(reset) 					?	0						:	// reset the register
							(ready & enable) 			?	0						:	// taking the input 
							(!ready) 					?	shiftedValue[63:32]		:	// applying the logic of sequential algorithm
															accumulator				;	// mainting the value in any other condition


assign counter_in =  		(reset) 					?	0						:	// reset the register
							(ready & enable) 			?	5'd31					:	// taking the input
							(!ready) 					?	counter - 1				:	// applying the logic of sequential algorithm
															counter					;	// mainting the value in any other condition


assign ready_in =   		(reset) 					?	1						:	// reset the register
							(ready & enable) 			?	0						:	// taking the input
							(!ready && counter == 0)	? 	1 						:	// applying the logic of sequential algorithm
															ready					;	// mainting the value in any other condition

 
assign isNeg_in =			(reset) 					?	0						:	// reset the register
							(ready & enable) 			?	{A[31], B[31]}			:	// taking the input
															isNeg					;	// mainting the value in any other condition


/*actual logic of the circuit*/
always@(posedge clk)
begin
	
	multiplier <= multiplier_in;
	multiplicand <= multiplicand_in;
	accumulator <= accumulator_in;
	counter <= counter_in;
	ready <= ready_in;
	isNeg <= isNeg_in;

end


endmodule


