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

/*registers for the actual logic of the circuit*/
reg [1:0] isNeg; // to test for the negatvity of the result isNeg[1] = A, isNeg[0] = B.
reg ready;  // to be able to take new input
reg [32:0] multiplicand_Q; // {multiplicand_Q, multiplicand_Q[-1]}
reg [31:0] multiplier_M, accumulator_A; // the actual registers for calculation of the result
reg [4:0] counter; // when size reaches number of bits then we rise the ready flag
reg carry;  // for shifting after addition

/*important assigns*/
assign A_imm = (A[31]) ? -A : A;
assign B_imm = (B[31]) ? -B : B;

//Res = {A,Q} and igonre the LSB
assign Res = ({accumulator_A, multiplicand_Q[32:1]} != 0 && (isNeg[1] ^ isNeg[0])) ? -{accumulator_A, multiplicand_Q[32:1]} : {accumulator_A, multiplicand_Q[32:1]};  //{accumulator_A, multiplicand_Q, multiplicand_Q[-1]}

assign OVF = Res[63] ^ isNeg[1] & Res[63] ^ isNeg[0];

/*actual logic of the circuit*/
always@(clk, reset)
begin

    if(reset)
    begin
        
        multiplier_M <= 0;
        multiplicand_Q <= 0;
        counter <= 0;
        ready <= 1;
        accumulator_A <= 0;
        isNeg <= 0;
    end 

    else if(clk)
    begin
    
        /*we are ready to take input from the outside world*/
        if(ready & enable)
        begin
            //A = 0 && Q-1 = 0 && Q = multiplicand
            multiplier_M <= A_imm;
            multiplicand_Q[32:1] <= B_imm;
            multiplicand_Q[0] <= 0;
            accumulator_A <= 0;
            isNeg[1] <= A[31];
            isNeg[0] <= B[31]; 
            ready <= 0;
            counter <= 5'd32;
        end

        else if(!ready & !enable)
        begin 
            // in case of of {Q[1], Q[0]} == 2'b10 then we do A = A - M
            if({multiplicand_Q[1], multiplicand_Q[0]} == 2'b10)
                accumulator_A = accumulator_A - multiplier_M;

            // in case of of {Q[1], Q[0]} == 2'b01 then we do A = A + M
            else if({multiplicand_Q[1], multiplicand_Q[0]} == 2'b01)
                accumulator_A = accumulator_A + multiplier_M;

            // arithmatic right shift the result (in order to use >>> , we must declare the type of the wire/reg as signed)
            {accumulator_A, multiplicand_Q} = {accumulator_A[31], accumulator_A, multiplicand_Q} >> 1;
            counter = counter - 1;  // decrement the iteration 

            // the result is ready
            if(counter == 5'd0)
                ready = 1;   
        end

        else
        begin 
            /*maintianing the state if nothing chaged*/
            multiplier_M <= multiplier_M;
            multiplicand_Q <= multiplicand_Q;
            counter <= counter;
            ready <= ready;
            accumulator_A <= accumulator_A;
            isNeg <= isNeg;
        end


    end

    else if(!clk & !reset & !ready)
    begin 
            // in case of of {Q[1], Q[0]} == 2'b10 then we do A = A - M
            if({multiplicand_Q[1], multiplicand_Q[0]} == 2'b10)
                accumulator_A = accumulator_A - multiplier_M;

            // in case of of {Q[1], Q[0]} == 2'b01 then we do A = A + M
            else if({multiplicand_Q[1], multiplicand_Q[0]} == 2'b01)
                accumulator_A = accumulator_A + multiplier_M;

            // arithmatic right shift the result (in order to use >>> , we must declare the type of the wire/reg as signed)
            {accumulator_A, multiplicand_Q} = {accumulator_A[31], accumulator_A, multiplicand_Q} >> 1;
            counter = counter - 1;  // decrement the iteration 

            // the result is ready
            if(counter == 5'd0)
                ready = 1;   

    end

    else
    begin 
        /*maintianing the state if nothing chaged*/
        multiplier_M <= multiplier_M;
        multiplicand_Q <= multiplicand_Q;
        counter <= counter;
        ready <= ready;
        accumulator_A <= accumulator_A;
        isNeg <= isNeg;
    end


end


endmodule