/*resources : 	
    https://www.youtube.com/watch?v=4-l_PGPog9o
	https://www.youtube.com/watch?v=lcPIMvI57dM
*/
module multiplierTree(Res, OVF, A, B, clk, reset, enable);

/*the inputs to be multiplies*/
input [31:0] A, B;
input clk, reset, enable;
reg [31:0] A_in, B_in;

/*the outputs from the multiplier*/
output reg [63:0] Res;
output wire OVF;        // overflow flag 

/*intermediate wires for clean code*/
wire [2047:0] normalizedWires;

wire [63:0] secondStage_Res, secondStage_carry; 

/*temp wires to handle negative case*/
wire [31:0] A_imm, B_imm;
wire [63:0] Res_imm, finalRes;
wire doNegateRes;

/*important assigns*/
assign A_imm = (A_in[31]) ? -A_in : A_in;
assign B_imm = (B_in[31]) ? -B_in : B_in;

assign finalRes = (Res_imm != 0 && doNegateRes) ? -Res_imm : Res_imm;
assign doNegateRes = A_in[31] ^ B_in[31]; 

/*calling necessary modules*/
multiplyAllBits firstStage(normalizedWires, A_imm, B_imm);
addIntermedaiteWires secondStage(secondStage_Res, secondStage_carry, normalizedWires);
addResWithCarry thirdStage(Res_imm, secondStage_Res, secondStage_carry);

/*important assigns*/
assign OVF = Res[63] ^ A[31] & Res[63] ^ B[31] ;

/*the logic of the module*/
always@(clk, reset)
begin
    
    if(reset)
    begin
        A_in <= 0;
        B_in <= 0;
        Res <= 0;
    end 

    else if(clk & enable)
    begin
        A_in <= A;
        B_in <= B;
    end

    else if(!clk)
        Res <= finalRes;

    else
    begin
        A_in <= A_in;
        B_in <= B_in;
    end

end

endmodule

/********************************************
this is the first stage in the wallace tree
********************************************/
module multiplyAllBits(normalizedWires, A, B);

/*inputs to 1st stage of wallace tree*/
input wire [31:0] A, B;

/*outputs from the 1st stage*/
output wire [2047:0] normalizedWires;

/*temp wires*/
wire [63:0] wiresMultiplied[31:0];

/*the actual logic in the circuit*/
genvar i, j;
generate
    for(i = 0; i < 32; i = i + 1)
        assign wiresMultiplied[i] = ({31{B[i]}} & A) << i;
endgenerate

/*normalization of the 2-D wires*/
generate
    for(i = 0; i < 32; i = i + 1)
        for(j = 0; j < 64; j = j + 1)
        assign normalizedWires[i * 64 + j] = wiresMultiplied[i][j];
endgenerate
 

endmodule

/********************************************
this is the second stage in wallace tree
********************************************/
module addIntermedaiteWires (Res, carry, normalizedWires);


/*inputs coming from the 1st stage*/
input wire [2047:0] normalizedWires;

/*temp wires*/
wire [63:0] wiresMultiplied[31:0];

/*for iterations*/
genvar i, j;

/*normalization of the 2-D wires*/
generate
    for(i = 0; i < 32; i = i + 1)
        for(j = 0; j < 64; j = j + 1)
        assign wiresMultiplied[i][j] = normalizedWires[i * 64 + j];
endgenerate



/*outputs from 2nd stage*/
output wire [63:0] Res, carry;

/*intermediate wires for clean code*/
wire [63:0] intermediateWiresStage1[21:0];        // stage 1 of addition
wire [63:0] intermediateWiresStage2[14:0];        // stage 2 of addition
wire [63:0] intermediateWiresStage3[9:0];        // stage 3 of addition
wire [63:0] intermediateWiresStage4[6:0];        // stage 4 of addition
wire [63:0] intermediateWiresStage5[4:0];        // stage 5 of addition
wire [63:0] intermediateWiresStage6[3:0];        // stage 6 of addition
wire [63:0] intermediateWiresStage7[2:0];        // stage 7 of addition



/*for stage 1 of addition*/
generate
    for(i = 0; i < 10; i = i + 1)
    begin
        CSAlike parallelAdderStage1(intermediateWiresStage1[2 * i + 0], intermediateWiresStage1[2 * i + 1], wiresMultiplied[3 * i + 0], wiresMultiplied[3 * i + 1], wiresMultiplied[3 * i + 2]); 
    end
endgenerate


/*for stage 2 of addition*/
generate
    for(i = 0; i < 7; i = i + 1)
    begin
        CSAlike parallelAdderStage2(intermediateWiresStage2[2 * i + 0], intermediateWiresStage2[2 * i + 1], intermediateWiresStage1[3 * i + 0], intermediateWiresStage1[3 * i + 1], intermediateWiresStage1[3 * i + 2]); 
    end
endgenerate


/*for stage 3 of addition*/
generate
    for(i = 0; i < 5; i = i + 1)
    begin
        CSAlike parallelAdderStage3(intermediateWiresStage3[2 * i + 0], intermediateWiresStage3[2 * i + 1], intermediateWiresStage2[3 * i + 0], intermediateWiresStage2[3 * i + 1], intermediateWiresStage2[3 * i + 2]); 
    end
endgenerate


/*for stage 4 of addition*/
generate
    for(i = 0; i < 3; i = i + 1)
    begin
        CSAlike parallelAdderStage4(intermediateWiresStage4[2 * i + 0], intermediateWiresStage4[2 * i + 1], intermediateWiresStage3[3 * i + 0], intermediateWiresStage3[3 * i + 1], intermediateWiresStage3[3 * i + 2]); 
    end
endgenerate

/*for stage 5 of addition*/
generate
    for(i = 0; i < 2; i = i + 1)
    begin
        CSAlike parallelAdderStage5(intermediateWiresStage5[2 * i + 0], intermediateWiresStage5[2 * i + 1], intermediateWiresStage4[3 * i + 0], intermediateWiresStage4[3 * i + 1], intermediateWiresStage4[3 * i + 2]); 
    end
endgenerate


/*for stage 6 of addition*/
generate
    for(i = 0; i < 1; i = i + 1)
    begin
        CSAlike parallelAdderStage6(intermediateWiresStage6[2 * i + 0], intermediateWiresStage6[2 * i + 1], intermediateWiresStage5[3 * i + 0], intermediateWiresStage5[3 * i + 1], intermediateWiresStage5[3 * i + 2]); 
    end
endgenerate


/*for stage 7 of addition*/
generate
    for(i = 0; i < 1; i = i + 1)
    begin
        CSAlike parallelAdderStage7(intermediateWiresStage7[2 * i + 0], intermediateWiresStage7[2 * i + 1], intermediateWiresStage6[3 * i + 0], intermediateWiresStage6[3 * i + 1], intermediateWiresStage6[3 * i + 2]); 
    end
endgenerate


/*for stage 8 of addition*/
generate
    for(i = 0; i < 1; i = i + 1)
    begin
        CSAlike finalStage(Res, carry, intermediateWiresStage7[3 * i + 0], intermediateWiresStage7[3 * i + 1], intermediateWiresStage7[3 * i + 2]); 
    end
endgenerate

/********************************************
bypassing the inputs
********************************************/

// from stage 0 to stage 1
assign intermediateWiresStage1[20] = wiresMultiplied[30];
assign intermediateWiresStage1[21] = wiresMultiplied[31];

// from stage 1 to stage 2
assign intermediateWiresStage2[14] = intermediateWiresStage1[21];

// from stage 3 to stage 4
assign intermediateWiresStage4[6] = intermediateWiresStage3[9];

// from stage 4 to stage 5
assign intermediateWiresStage5[4] = intermediateWiresStage4[6];

// from stage 5 to stage 6
assign intermediateWiresStage6[3] = intermediateWiresStage5[4];
assign intermediateWiresStage6[2] = intermediateWiresStage5[3];

// from stage 6 to stage 7
assign intermediateWiresStage7[2] = intermediateWiresStage6[3];
 

endmodule

/********************************************
this is CSA look like to add parallely
********************************************/
module CSAlike (result, carry, A, B, C);

/*list of the inputs*/
input wire [63:0] A, B, C;

/*outputs*/
output wire [63:0] result, carry;

/*temp genvar*/
genvar i;

/*important assigns*/
assign carry[0] = 0;
assign result[63] = 0;

/*actual logic of parallel adders*/
for(i = 0; i < 63; i = i + 1)
begin
    FA fa(A[i], B[i], C[i], result[i], carry[i+1]);
end

endmodule


/********************************************
this is the third stage in wallace tree
********************************************/
module addResWithCarry (Res_out, Res_in, carry_in);

/*list of the inputs*/
input wire [63:0] Res_in, carry_in;

/*outputs*/
output wire [63:0] Res_out;

/*using normar adder (verilog adder (adder plus))*/
assign Res_out = Res_in + carry_in;

endmodule