/*
    resources:
        https://www.youtube.com/watch?v=cWfaw7b3jKY
*/
module boothAlgo(Res, OVF, A, B, clk, reset, enable);

/*the inputs to be multiplies*/
input [31:0] A, B;
input clk, reset, enable;

/*the outputs from the multiplier*/
output wire [63:0] Res; 
output wire OVF;        // overflow flag 


/*temp wires to handle negative case*/
wire [31:0] A_imm, B_imm;   

/*temp wires for clean code*/
wire [31:0] temp_accumulator;
wire [64:0] shiftedValue;
wire [63:0] Res_imm; 


/*registers for the actual logic of the circuit*/
reg [1:0] isNeg; // to test for the negatvity of the result isNeg[1] = A, isNeg[0] = B.
reg ready;  // to be able to take new input
reg [32:0] multiplicand_Q; // {multiplicand_Q, multiplicand_Q[-1]}
reg [31:0] multiplier_M, accumulator_A; // the actual registers for calculation of the result
reg [4:0] counter; // when size reaches number of bits then we rise the ready flag

/*important assigns*/
assign A_imm = (A[31]) ? -A : A;
assign B_imm = (B[31]) ? -B : B;

//Res = {A,Q} and igonre the LSB
assign Res = (Res_imm != 0 && (isNeg[1] ^ isNeg[0])) ? -Res_imm : Res_imm;  //{accumulator_A, multiplicand_Q, multiplicand_Q[-1]}

assign OVF = Res[63] ^ isNeg[1] & Res[63] ^ isNeg[0];


/*important assigns*/
assign Res = (Res_imm != 0 && (isNeg[1] ^ isNeg[0])) ? -Res_imm : Res_imm;
assign OVF = Res[63] ^ isNeg[1] & Res[63] ^ isNeg[0];


/*making the temp wires for easier code */
assign Res_imm = {accumulator_A, multiplicand_Q[32:1]}; // the result 

// choose whether A = A + M or  A = A - M not
assign temp_accumulator =   {multiplicand_Q[1], multiplicand_Q[0]} == 2'b10     ?   accumulator_A - multiplier_M    :
                            {multiplicand_Q[1], multiplicand_Q[0]} == 2'b01     ?   accumulator_A + multiplier_M    :
                                                                                    accumulator_A                   ;


/*shifting the temporary wires*/
assign shiftedValue[32:0] =  {temp_accumulator[0], multiplicand_Q[32:1]};  
assign shiftedValue[64:33] =  {temp_accumulator[31], temp_accumulator[31:1]};


/*making temporariers wires as "if" statements in the always block was prohibited by oasys */
wire [31:0] multiplier_in, accumulator_in;
wire [32:0] multiplicand_in;
wire [4:0] counter_in;
wire ready_in;
wire [1:0] isNeg_in;

assign multiplier_in = 		(reset) 					?	0						:	// reset the register
							(ready & enable) 			?	A_imm					:	// taking the input 
															multiplier_M			;	// mainting the value in any other condition


assign multiplicand_in = 	(reset) 					?	0						:	// reset the register
							(ready & enable) 			?	{B_imm, 1'b0}			:	// taking the input 
							(!ready) 					?	shiftedValue[32:0]		:	// applying the logic of sequential algorithm
															multiplicand_Q			;	// mainting the value in any other condition


assign accumulator_in = 	(reset) 					?	0						:	// reset the register
							(ready & enable) 			?	0						:	// taking the input 
							(!ready) 					?	shiftedValue[64:33]		:	// applying the logic of sequential algorithm
															accumulator_A			;	// mainting the value in any other condition


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
	
	multiplier_M <= multiplier_in;
	multiplicand_Q <= multiplicand_in;
	accumulator_A <= accumulator_in;
	counter <= counter_in;
	ready <= ready_in;
	isNeg <= isNeg_in;

end

endmodule