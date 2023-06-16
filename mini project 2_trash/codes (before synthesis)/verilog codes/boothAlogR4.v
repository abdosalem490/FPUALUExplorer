/*
    resource :
        https://www.youtube.com/watch?v=iX7SF_YZIz0
        https://www.youtube.com/watch?v=liq_dH7wSFU
*/
module boothAlgoR4(Res, OVF, A, B, clk, reset, enable);

/*the inputs to be multiplies*/
input [31:0] A, B;
input clk, reset, enable;
reg [31:0] A_in, B_in;

/*the outputs from the multiplier*/
output reg [63:0] Res;
output wire OVF;        // overflow flag 

/*temp wires to handle negative case*/
wire [31:0] A_imm, B_imm;
wire [63:0] Res_imm, finalRes;
wire doNegateRes;

/*important assigns*/
assign OVF = Res[63] ^ A_in[31] & Res[63] ^ A_in[31];

assign A_imm = (A_in[31]) ? -A_in : A_in;
assign B_imm = (B_in[31]) ? -B_in : B_in;

assign finalRes = (Res_imm != 0 && doNegateRes) ? -Res_imm : Res_imm;
assign doNegateRes = A_in[31] ^ B_in[31]; 


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



/*************************************************
    actual algorithm
*************************************************/

/*temp wire for construction the recorderd multiplier*/
wire [2:0] recorded_multiplier[0:15];

/*temp wire for the results of the mutliplication*/
wire [63:0] temp_res [0:15];
wire [63:0] aggregated_res[0:14];

/*temp wires for constructing the result*/
wire [31:0] A_imm_2s_complement;

assign A_imm_2s_complement = -A_imm;

// construting the recorded multiplier from the recording table
genvar i;

assign recorded_multiplier[0] = getRecData({B_imm[1:0], 1'b0});

generate
    for(i = 1; i < 16; i = i + 1)
    begin
        assign recorded_multiplier[i] = getRecData(B_imm[2*i+1:2*i-1]);
    end
endgenerate

/*now we do multiplication to generate the multiplication tree results*/
generate 
    for(i = 0; i < 16; i = i + 1)
    begin
        assign temp_res[i] =    (recorded_multiplier[i] == 3'b000)     ?    0                                                                                               :
                                (recorded_multiplier[i] == 3'b001)     ?    { { (32-2*i){A_imm[31]} } , A_imm, {(2 * i){1'b0}}}                                             :
                                (recorded_multiplier[i] == 3'b010)     ?    { { (32-2*i - 1){A_imm[31]} } , A_imm, {(2 * i + 1){1'b0}}}                                     :
                                (recorded_multiplier[i] == 3'b011)     ?    { { (32-2*i){A_imm_2s_complement[31]} } , A_imm_2s_complement, {(2 * i){1'b0}}}                 :
                                                                            { { (32-2*i - 1){A_imm_2s_complement[31]} } , A_imm_2s_complement, {(2 * i + 1){1'b0}}}         ;

    end
endgenerate

/*calculating the result*/
assign aggregated_res[0] = temp_res[0] + temp_res[1];
generate
    for(i = 0; i < 14; i = i + 1)
        assign aggregated_res[i+1] = aggregated_res[i] + temp_res[i+2]; 
endgenerate

assign Res_imm = aggregated_res[14];

/*this is a function to return the corresponding data from the recorded table
    where the table is as follow:
        in  :   out
    ----------------
    ->  000 :   0
    ->  001 :   1
    ->  010 :   1
    ->  011 :   2
    ->  100 :  -2
    ->  101 :  -1
    ->  110 :  -1
    ->  111 :   0
    
    where the out values are as follows:
    ->  0   :   000
    ->  1   :   001
    ->  2   :   010
    -> -1   :   011
    -> -2   :   100

*/
function [2:0] getRecData;
input [2:0] val_in;
begin
    getRecData =    (val_in == 3'b000)  ?   3'b000  :
                    (val_in == 3'b001)  ?   3'b001  :
                    (val_in == 3'b010)  ?   3'b001  :
                    (val_in == 3'b011)  ?   3'b010  :
                    (val_in == 3'b100)  ?   3'b100  :
                    (val_in == 3'b101)  ?   3'b011  :
                    (val_in == 3'b110)  ?   3'b011  :
                                            3'b000  ;   // val_in == 3'b111
end

endfunction



endmodule