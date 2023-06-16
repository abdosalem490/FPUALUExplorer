module VM (Res, OVF, A, B, clk, reset, enable);


/*the inputs to be multiplies*/
input [31:0] A, B;
input clk;
input reset, enable;
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

assign Res_imm = A_imm * B_imm;
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


endmodule