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
reg [4:0] counter; // when size reaches number of bits then we rise the ready flag
reg carry;  // for shifting after addition
 
/*important assigns*/
assign A_imm = (A[31]) ? -A : A;
assign B_imm = (B[31]) ? -B : B;
assign Res = ({accumulator, multiplicand} != 0 && (isNeg[1] ^ isNeg[0])) ? -{accumulator, multiplicand} : {accumulator, multiplicand};
assign OVF = Res[63] ^ isNeg[1] & Res[63] ^ isNeg[0];

/*actual logic of the circuit*/
always@(clk, reset)
begin

    if(reset)
    begin
        multiplier <= 0;
        multiplicand <= 0;
        counter <= 0;
        ready <= 1;
        accumulator <= 0;
        isNeg <= 0;
        carry <= 0;
    end 

    else if(!ready)
    begin
        // in case of of Q[0] we add A + M
        if(multiplicand[0])
            {carry, accumulator} = accumulator + multiplier;

        // right shift the result
        {accumulator, multiplicand} = {carry, accumulator, multiplicand} >> 1;
        counter = counter - 1;  // decrement the iteration 

        // the result is ready
        if(counter == 5'd0)
            ready = 1;          
    end

    /*we are ready to take input from the outside world*/
    else if(clk & ready & enable)
    begin

        multiplier <= A_imm;
        multiplicand <= B_imm;
        accumulator <= 0;
        isNeg[1] <= A[31];
        isNeg[0] <= B[31]; 
        ready <= 0;
        counter <= 5'd32;
        carry <= 0;

    end

    else
    begin 
        /*maintianing the state if nothing chaged*/
        multiplier <= multiplier;
        multiplicand <= multiplicand;
        counter <= counter;
        ready <= ready;
        accumulator <= accumulator;
        isNeg <= isNeg;
        carry <= carry;
    end


end


endmodule
