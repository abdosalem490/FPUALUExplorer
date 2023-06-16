/*refer to https://github.com/ahirsharan/32-Bit-Floating-Point-Adder */
module FPU_CSA #(parameter M_size = 23, E_size = 8, total_size = 32, adderSize = 32)(A, B, SUM);

//inputs
input [total_size-1:0] A, B;

//outputs
output [total_size-1:0] SUM;


//temp wires
wire [E_size-1:0] EA, EB, tempENorm;
wire [M_size-1:0] tempM_norm;
wire [M_size:0] MA, MB, M_resultTruncated, M_smaller, M_greatest, M_shitfed, M_resultTruncatedShifted;
wire [E_size-1:0] E_greatest, E_smallest, E_complement, E_difference;
wire [adderSize-1:0] M_shiftedmodified, M_greatermodified, M_result, M_resultPositiveRep;
wire E_greatestFlag;			/*is it's 0 then EA is greater else EB is greater*/
wire [1:0] dummy;
wire [1:0] dummy1;
wire [E_size-1:0] bit1Post;
wire Cout, OVF;

//important assignments
assign EA = A[total_size-2:M_size];
assign EB = B[total_size-2:M_size];
assign MA = {1'b1, A[M_size-1:0]};
assign MB = {1'b1, B[M_size-1:0]};
assign M_resultTruncatedShifted = M_resultTruncated << 1;

//getting the greatest number of them
assign {E_greatestFlag, E_greatest} = (EA > EB)? {1'b0, EA} : {1'b1, EB};

//getting the lowest number among the input
assign E_smallest = (EA < EB)? EA : EB;

//getting the complement of the smaller numer (shift_amount = A - B) is equivalent to (shift_amount = A + (-B))
assign E_complement = -E_smallest; 

//getting the difference between the 2 numbers exponents by adding them
CSA #(E_size) add1(E_greatest, E_complement, {E_size{1'b0}}, {dummy1[1], E_difference}, dummy[1], dummy[0]);

//getting the mantissa to be shifted base on the exponent
assign M_smaller = (E_greatestFlag == 1'b1) ? MA : MB;
//getting the greater mantissa which not be shifted
assign M_greatest = (E_greatestFlag == 1'b0) ? MA : MB;

//shifting the smaller mantissa 
assign M_shitfed = M_smaller >> E_difference;

//check if mantissa is negative number and if so, convert to its 2's complement
assign M_shiftedmodified = (A[total_size-1] == 1'b1)? -{{(adderSize-M_size){1'b0}}, M_shitfed} : {{(adderSize-M_size){1'b0}}, M_shitfed};
assign M_greatermodified = (B[total_size-1] == 1'b1)? -{{(adderSize-M_size){1'b0}}, M_greatest} : {{(adderSize-M_size){1'b0}}, M_greatest};

//adding the 2 mantissa together
CSA #(adderSize) add2(M_shiftedmodified, M_greatermodified, {adderSize{1'b0}}, {dummy1[0], M_result}, Cout, OVF);

//truncate the result
assign M_resultPositiveRep = (M_result[total_size-1] == 1'b1) ? -M_result : M_result;
assign M_resultTruncated = M_resultPositiveRep[M_size:0];

//normalise the output

/*get the position of the MSB 1*/
assign bit1Post = getBit1Pos(M_resultPositiveRep);

/*for the sign (check if the result is negative and make the sign bit based on that)*/
assign SUM[total_size-1] = M_result[total_size-1];	

/*for the exponent*/
assign tempENorm =   (bit1Post == {E_size{1'b1}}) ? 0 : (bit1Post == 24)? E_greatest + 1 : E_greatest - (M_size - bit1Post);
assign SUM[total_size-2:M_size] = ((&A[total_size-2:M_size]) | (&B[total_size-2:M_size])) ? {E_size{1'b1}} 
								  : tempENorm;

/*for the mantissa*/
assign tempM_norm = (bit1Post == 24)?  M_resultTruncated[M_size:1] : M_resultTruncated[M_size:1] << (M_size - bit1Post + 1);
assign SUM[M_size-1:0] = (tempENorm == {E_size{1'b1}}) ? 0 
						 : ((&A[total_size-2:M_size]) | (&B[total_size-2:M_size])) ? (A[total_size-1] ~^ B[total_size-1])? 0 : 1 
						 : tempM_norm;



//this function is used to get the position of the MSB which has the value 1 to normalise the result
function [E_size-1:0] getBit1Pos;

//temp data	
reg flag;
integer i;

//inputs
input [adderSize-1:0] in;

begin 
	flag = 0;
	
	if(in == 0)
		getBit1Pos = {E_size{1'b1}};
	else
	for(i = adderSize-1; i >= 0; i = i - 1)
	begin 
		if(in[i] == 1'b1 && flag == 1'b0)
		begin
			getBit1Pos = i;
			flag = 1'b1;
		end
	end
	
end

endfunction

endmodule
