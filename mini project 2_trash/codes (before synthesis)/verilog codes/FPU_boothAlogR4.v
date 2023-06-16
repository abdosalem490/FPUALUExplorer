/*refer to
		 https://www.quora.com/What-is-the-verilog-code-for-floating-point-multiplier
		 https://www.youtube.com/watch?v=27JjUa-eu_E
		 https://stackoverflow.com/questions/48857548/multiplication-of-mantissa-in-floating-point-arithmetic*/
		 
`include "boothAlogR4.v"
module FPU_boothAlgoR4(Res, A, B, clk, reset, enable);

//inputs
input [31:0] A, B;
input clk, reset, enable;

//outputs
output reg [31:0] Res;

//temp wires
wire [7:0] EA, EB;
wire [23:0] MA, MB;
wire [22:0] M_resultTruncated, M_truncateMoreOrNot;
wire [63:0] M_multiplied;
wire [7:0]  E_addedDueToMul, E_IncOrNot;
wire dummy;

/*buffers before and after the FPU*/
reg [31:0] A_reg, B_reg;

//important assignments
assign EA = A_reg[30:23];
assign EB = B_reg[30:23];
assign MA = {1'b1, A_reg[22:0]};
assign MB = {1'b1, B_reg[22:0]};


/*adding the exponents togethers due to multiplication*/
assign E_addedDueToMul = EA + EB - 8'd127;

/*for MSB it's either in position 47 or 46, it requires special treatment (inc by 1)*/
assign E_IncOrNot = M_multiplied[47] ?  E_addedDueToMul	+ 1	:	E_addedDueToMul; 

/*multiply the significands*/
boothAlgoR4 multiplier(M_multiplied, dummy, {8'd0 ,MA}, {8'd0 ,MB}, clk, reset, enable);

//truncate the result
assign M_resultTruncated = M_multiplied[46:24] + M_multiplied[23];

/*for MSB it's either in position 47 or 46, it requires special treatment (truncate one bit)*/
assign M_truncateMoreOrNot	 =  M_multiplied[47] ?  M_resultTruncated	:	M_multiplied[45:23];

/*logic for the buffer in the floating point and the result calcuation*/
always@(clk, reset)
begin

    if(reset)
    begin
        A_reg <= 0;
        B_reg <= 0;
        Res <= 0;
    end 

    else if(!clk & enable)
    begin
        A_reg <= A;
        B_reg <= B;
    end

    else if(clk)
	begin

		/*for the sign (check if the result is negative by checking if any of the inputs is negative)*/
		Res[31] = A_reg[31] ^ B_reg[31];		

		/*for the exponent*/
		Res[30:23] = 			((A_reg[30:0] == 0 && B_reg[30:0] == 31'b1111111100000000000000000000000) || (B_reg[30:0] == 0 && A_reg[30:0] == 31'b1111111100000000000000000000000))	?	8'hFF 	// for multiplication of 0 by infinity
							:	((A_reg[30:0] == 0) || (B_reg[30:0] == 0)) ? 0				// in case we multiplied by zero  
							:	(B_reg[30:0] == 31'b1111111100000000000000000000000 || A_reg[30:0] == 31'b1111111100000000000000000000000)	?	8'hFF	// in case we multiplied by infinity
							:	(B_reg[30:23] == 8'hFF || A_reg[30:23] == 8'hFF)	?	8'hFF	// in case we multiplied by NAN
							:	(B_reg[30:23] > 8'd190 && A_reg[30:23] > 8'd190)	?	8'hFF	// report overflow (infinity)
							:	(B_reg[30:23] < 8'd63 && A_reg[30:23] < 8'd63)	?	8'h0		// report undrflow (0)
							: 	E_IncOrNot;

		/*for the mantissa*/
		Res[22:0] = 			((A_reg[30:0] == 0 && B_reg[30:0] == 31'b1111111100000000000000000000000) || (B_reg[30:0] == 0 && A_reg[30:0] == 31'b1111111100000000000000000000000))	?	 1	// for multiplication of 0 by infinity
							:	((A_reg[30:0] == 0) || (B_reg[30:0] == 0)) ? 0				// in case we multiplied by zero  
							:	(B_reg[30:0] == 31'b1111111100000000000000000000000 || A_reg[30:0] == 31'b1111111100000000000000000000000)	?	0	// in case we multiplied by infinity
							:	(B_reg[30:23] == 8'hFF || A_reg[30:23] == 8'hFF)	?	1	// in case we multiplied by NAN
							:	(B_reg[30:23] > 8'd190 && A_reg[30:23] > 8'd190)	?	0	// report overflow (infinity)
							:	(B_reg[30:23] < 8'd63 && A_reg[30:23] < 8'd63)	?	8'h0		// report undrflow (0)
							: 	M_truncateMoreOrNot;							
	end

    else
    begin
        A_reg <= A_reg;
        B_reg <= B_reg;
		Res <= Res;
    end

end


endmodule