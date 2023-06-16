`include "FPU_VM.v"
`include "FPU_multiplierTree.v"
`include "FPU_squentialMultiplier.v"
`include "FPU_boothAlogR4.v"
`include "FPU_boothAlgo.v"

module FPU_testbench();

// temp data
integer i = 0;
reg clk, reset, enable;

//some consts
localparam smallDelay = 10;
localparam largeDelay = 200;
localparam clockDelay = 5;

//stats
integer NumOfSuccess[0:4];
integer NumOfFailure[0:4];

//regs for inputs
reg signed [31:0] A, B;

//wires for outputs
wire signed [31	:0] RES[0:4];

//instantiation
FPU_VM	   					uut1(RES[0], A, B, clk, reset, enable);	/*using Verilog (‘*’) version of multiplier*/
FPU_multiplierTree    		uut2(RES[1], A, B, clk, reset, enable);	/*using Multiplier Tree (combinational)*/
FPU_sequentialMultiplier   	uut3(RES[2], A, B, clk, reset, enable);	/*using Sequential Multiplier using shift & accumulate*/
FPU_boothAlgo	 			uut4(RES[3], A, B, clk, reset, enable);	/*using Booth Algorithm*/
FPU_boothAlgoR4   			uut5(RES[4], A, B, clk, reset, enable);	/*using Radix-4 Booth Algorithm*/

/*this is the ppart related to running a clock*/
always begin
	clk = 0;
	#clockDelay;
	clk = ~clk;
	#clockDelay;
end

initial 
begin

//initialize
reset = 0;
enable = 0;
for(i = 0; i < 8; i = i + 1)
begin
	NumOfSuccess[i] = 0;
	NumOfFailure[i] = 0;
end

//reseting all the registers
#smallDelay;
reset = 1;
#smallDelay;
reset = 0;



$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #1 Multiplication of positive and negative number.");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #1 Multiplication of positive and negative number.
************************************************************/
A = 32'b01000011101101100010000000000000; /*which is equivalent to 364.25*/ 
B = 32'b11000011001110100100111101011100; /*which is equivalent to -186.31*/ 
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 32'b11000111100001001000101110110101)	/*which is equivalent to -67863.4140625 */ 
begin
	$display("FPU_Verilog_Multiplier_TestCase#1:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Multiplier_TestCase#1:failed with input %b and %b and Output %b", A, B, RES[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 32'b11000111100001001000101110110101) /*which is equivalent to -67863.4140625 */ 
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#1:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#1:failed with input %b and %b and Output %b", A, B, RES[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 32'b11000111100001001000101110110101) /*which is equivalent to -67863.4140625 */ 
begin
	$display("FPU_Sequential_Multiplier_TestCase#1:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Sequential_Multiplier_TestCase#1:failed with input %b and %b and Output %b", A, B, RES[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 32'b11000111100001001000101110110101) /*which is equivalent to -67863.4140625 */ 
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#1:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#1:failed with input %b and %b and Output %b", A, B, RES[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 32'b11000111100001001000101110110101) /*which is equivalent to -67863.4140625 */ 
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#1:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#1:failed with input %b and %b and Output %b", A, B, RES[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #2 Multiplication of positive and positive number.");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #2 Multiplication of positive and positive number.
************************************************************/
A = 32'b01000011101101100010000000000000; /*which is equivalent to 364.25*/ 
B = 32'b01000011001110100100111101011100; /*which is equivalent to 186.31*/ 
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 32'b01000111100001001000101110110101) /*which is equivalent to 67863.4140625 */ 
begin
	$display("FPU_Verilog_Multiplier_TestCase#2:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Multiplier_TestCase#2:failed with input %b and %b and Output %b", A, B, RES[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 32'b01000111100001001000101110110101) /*which is equivalent to 67863.4140625 */ 
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#2:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#2:failed with input %b and %b and Output %b", A, B, RES[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 32'b01000111100001001000101110110101) /*which is equivalent to 67863.4140625 */ 
begin
	$display("FPU_Sequential_Multiplier_TestCase#2:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Sequential_Multiplier_TestCase#2:failed with input %b and %b and Output %b", A, B, RES[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 32'b01000111100001001000101110110101) /*which is equivalent to 67863.4140625 */ 
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#2:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#2:failed with input %b and %b and Output %b", A, B, RES[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 32'b01000111100001001000101110110101) /*which is equivalent to 67863.4140625 */ 
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#2:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#2:failed with input %b and %b and Output %b", A, B, RES[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end



$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #3 Multiplication of negative and negative number");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #3 Multiplication of negative and negative number.
************************************************************/
A = 32'b11000011101101100010000000000000; /*which is equivalent to -364.25*/ 
B = 32'b11000011001110100100111101011100; /*which is equivalent to -186.31*/ 
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 32'b01000111100001001000101110110101) 
begin
	$display("FPU_Verilog_Multiplier_TestCase#3:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Multiplier_TestCase#3:failed with input %b and %b and Output %b", A, B, RES[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 32'b01000111100001001000101110110101) /*which is equivalent to 67863.4140625 */ 
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#3:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#3:failed with input %b and %b and Output %b", A, B, RES[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 32'b01000111100001001000101110110101) /*which is equivalent to 67863.4140625 */ 
begin
	$display("FPU_Sequential_Multiplier_TestCase#3:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Sequential_Multiplier_TestCase#3:failed with input %b and %b and Output %b", A, B, RES[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 32'b01000111100001001000101110110101) /*which is equivalent to 67863.4140625 */ 
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#3:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#3:failed with input %b and %b and Output %b", A, B, RES[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 32'b01000111100001001000101110110101) /*which is equivalent to 67863.4140625 */ 
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#3:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#3:failed with input %b and %b and Output %b", A, B, RES[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end



$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #4 Multiplication of negative and positive number");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #4 Multiplication of negative and positive number.
************************************************************/
A = 32'b11000011101101100010000000000000; /*which is equivalent to -364.25*/ 
B = 32'b01000011001110100100111101011100; /*which is equivalent to 186.31*/ 
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 32'b11000111100001001000101110110101) /*which is equivalent to 67863.4140625 */ 
begin
	$display("FPU_Verilog_Multiplier_TestCase#4:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Multiplier_TestCase#4:failed with input %b and %b and Output %b", A, B, RES[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 32'b11000111100001001000101110110101) /*which is equivalent to 67863.4140625 */ 
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#4:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#4:failed with input %b and %b and Output %b", A, B, RES[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 32'b11000111100001001000101110110101) /*which is equivalent to 67863.4140625 */ 
begin
	$display("FPU_Sequential_Multiplier_TestCase#4:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Sequential_Multiplier_TestCase#4:failed with input %b and %b and Output %b", A, B, RES[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 32'b11000111100001001000101110110101) /*which is equivalent to 67863.4140625 */ 
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#4:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#4:failed with input %b and %b and Output %b", A, B, RES[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 32'b11000111100001001000101110110101) /*which is equivalent to 67863.4140625 */ 
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#4:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#4:failed with input %b and %b and Output %b", A, B, RES[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end



$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #5 Multiplication by zero");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #5 Multiplication by zero.
************************************************************/
A = 32'b01000011101101100010000000000000; /*which is equivalent to 364.25*/ 
B = 32'b00000000000000000000000000000000; /*which is equivalent to 0*/ 
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 0) 
begin
	$display("FPU_Verilog_Multiplier_TestCase#5:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Multiplier_TestCase#5:failed with input %b and %b and Output %b", A, B, RES[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 0) 
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#5:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#5:failed with input %b and %b and Output %b", A, B, RES[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 0) 
begin
	$display("FPU_Sequential_Multiplier_TestCase#5:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Sequential_Multiplier_TestCase#5:failed with input %b and %b and Output %b", A, B, RES[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 0) 
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#5:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#5:failed with input %b and %b and Output %b", A, B, RES[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 0) 
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#5:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#5:failed with input %b and %b and Output %b", A, B, RES[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end


$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #6 Multiplication by 1");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #6 Multiplication by 1
************************************************************/
A = 32'b01000011101101100010000000000000; /*which is equivalent to 364.25*/ 
B = 32'b00111111100000000000000000000000; /*which is equivalent to 1*/ 
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 32'b01000011101101100010000000000000) /*which is equivalent to 364.25*/ 
begin
	$display("FPU_Verilog_Multiplier_TestCase#6:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Multiplier_TestCase#6:failed with input %b and %b and Output %b", A, B, RES[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 32'b01000011101101100010000000000000) /*which is equivalent to 364.25*/ 
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#6:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#6:failed with input %b and %b and Output %b", A, B, RES[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 32'b01000011101101100010000000000000) /*which is equivalent to 364.25*/ 
begin
	$display("FPU_Sequential_Multiplier_TestCase#6:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Sequential_Multiplier_TestCase#6:failed with input %b and %b and Output %b", A, B, RES[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 32'b01000011101101100010000000000000) /*which is equivalent to 364.25*/ 
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#6:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#6:failed with input %b and %b and Output %b", A, B, RES[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 32'b01000011101101100010000000000000) /*which is equivalent to 364.25*/ 
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#6:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#6:failed with input %b and %b and Output %b", A, B, RES[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end



$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #7 multiplication of number by itself");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #7 multiplication of number by itself
************************************************************/
A = 32'b01000011101101100010000000000000; /*which is equivalent to 364.25*/ 
B = 32'b01000011101101100010000000000000; /*which is equivalent to 364.25*/ 
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 32'b01001000000000011001000110000100) /*which is equivalent to 132678.0625*/ 
begin
	$display("FPU_Verilog_Multiplier_TestCase#7:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Multiplier_TestCase#7:failed with input %b and %b and Output %b", A, B, RES[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 32'b01001000000000011001000110000100) /*which is equivalent to 132678.0625*/
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#7:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#7:failed with input %b and %b and Output %b", A, B, RES[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 32'b01001000000000011001000110000100) /*which is equivalent to 132678.0625*/
begin
	$display("FPU_Sequential_Multiplier_TestCase#7:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Sequential_Multiplier_TestCase#7:failed with input %b and %b and Output %b", A, B, RES[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 32'b01001000000000011001000110000100) /*which is equivalent to 132678.0625*/
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#7:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#7:failed with input %b and %b and Output %b", A, B, RES[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 32'b01001000000000011001000110000100) /*which is equivalent to 132678.0625*/
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#7:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#7:failed with input %b and %b and Output %b", A, B, RES[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end


$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #8 multiplication of small number with big number");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #8 multiplication of double the negative of a random number
************************************************************/
A = 32'b01000011100000011010110011001101; /*which is equivalent to 259.35*/ 
B = 32'b00111011011001111111111101011000; /*which is equivalent to 0.00354*/
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 32'b00111111011010110000100010001001) /*which is equivalent to 0.918098986149*/
begin
	$display("FPU_Verilog_Multiplier_TestCase#8:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Multiplier_TestCase#8:failed with input %b and %b and Output %b", A, B, RES[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 32'b00111111011010110000100010001001) /*which is equivalent to 0.918098986149*/
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#8:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#8:failed with input %b and %b and Output %b", A, B, RES[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 32'b00111111011010110000100010001001) /*which is equivalent to 0.918098986149*/
begin
	$display("FPU_Sequential_Multiplier_TestCase#8:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Sequential_Multiplier_TestCase#8:failed with input %b and %b and Output %b", A, B, RES[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 32'b00111111011010110000100010001001) /*which is equivalent to 0.918098986149*/
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#8:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#8:failed with input %b and %b and Output %b", A, B, RES[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 32'b00111111011010110000100010001001) /*which is equivalent to 0.918098986149*/
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#8:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#8:failed with input %b and %b and Output %b", A, B, RES[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end



$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #9 multiplication of 2 big numbers");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #9 multiplication of 2 big numbers
************************************************************/
A = 32'b01000011100000011010110011001101; /*which is equivalent to 259.35*/ 
B = 32'b01000101101100001010000110011010; /*which is equivalent to 5652.2*/
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 32'b01001001101100101111000101010001) /*which is equivalent to 1465898.125*/
begin
	$display("FPU_Verilog_Multiplier_TestCase#9:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Multiplier_TestCase#9:failed with input %b and %b and Output %b", A, B, RES[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 32'b01001001101100101111000101010001) /*which is equivalent to 1465898.125*/
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#9:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#9:failed with input %b and %b and Output %b", A, B, RES[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 32'b01001001101100101111000101010001) /*which is equivalent to 1465898.125*/
begin
	$display("FPU_Sequential_Multiplier_TestCase#9:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Sequential_Multiplier_TestCase#9:failed with input %b and %b and Output %b", A, B, RES[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 32'b01001001101100101111000101010001) /*which is equivalent to 1465898.125*/
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#9:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#9:failed with input %b and %b and Output %b", A, B, RES[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 32'b01001001101100101111000101010001) /*which is equivalent to 1465898.125*/
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#9:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#9:failed with input %b and %b and Output %b", A, B, RES[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end



$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #10 multiplication of small numbers");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #10 multiplication of small numbers
************************************************************/
A = 32'b00111110010011001100110011001101; /*which is equivalent to 0.2*/ 
B = 32'b00111011010111101101001010001001; /*which is equivalent to 0.0034*/
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 32'b00111010001100100100001000000111) /*which is equivalent to 0.000679999997374*/
begin
	$display("FPU_Verilog_Multiplier_TestCase#10:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Multiplier_TestCase#10:failed with input %b and %b and Output %b", A, B, RES[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 32'b00111010001100100100001000000111) /*which is equivalent to 0.000679999997374*/
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#10:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#10:failed with input %b and %b and Output %b", A, B, RES[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 32'b00111010001100100100001000000111) /*which is equivalent to 0.000679999997374*/
begin
	$display("FPU_Sequential_Multiplier_TestCase#10:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Sequential_Multiplier_TestCase#10:failed with input %b and %b and Output %b", A, B, RES[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 32'b00111010001100100100001000000111) /*which is equivalent to 0.000679999997374*/
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#10:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#10:failed with input %b and %b and Output %b", A, B, RES[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 32'b00111010001100100100001000000111) /*which is equivalent to 0.000679999997374*/
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#10:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#10:failed with input %b and %b and Output %b", A, B, RES[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end


$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #11 multiply infinity by 0");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #11 multiply infinity by 0
************************************************************/
A = 32'b01111111100000000000000000000000; /*which is equivalent to positive infinity*/ 
B = 32'b00000000000000000000000000000000; /*which is equivalent to 0*/
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 32'b01111111100000000000000000000001) /*which is equivalent to NAN*/
begin
	$display("FPU_Verilog_Multiplier_TestCase#11:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Multiplier_TestCase#11:failed with input %b and %b and Output %b", A, B, RES[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 32'b01111111100000000000000000000001) /*which is equivalent to NAN*/
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#11:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#11:failed with input %b and %b and Output %b", A, B, RES[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 32'b01111111100000000000000000000001) /*which is equivalent to NAN*/
begin
	$display("FPU_Sequential_Multiplier_TestCase#11:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Sequential_Multiplier_TestCase#11:failed with input %b and %b and Output %b", A, B, RES[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 32'b01111111100000000000000000000001) /*which is equivalent to NAN*/
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#11:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#11:failed with input %b and %b and Output %b", A, B, RES[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 32'b01111111100000000000000000000001) /*which is equivalent to NAN*/
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#11:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#11:failed with input %b and %b and Output %b", A, B, RES[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end


$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #12 multiply infinity by infinity");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #12 multiply infinity by 0
************************************************************/
A = 32'b01111111100000000000000000000000; /*which is equivalent to positive infinity*/ 
B = 32'b11111111100000000000000000000000; /*which is equivalent to negative infinity*/
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_Verilog_Multiplier_TestCase#12:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Multiplier_TestCase#12:failed with input %b and %b and Output %b", A, B, RES[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#12:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#12:failed with input %b and %b and Output %b", A, B, RES[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_Sequential_Multiplier_TestCase#12:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Sequential_Multiplier_TestCase#12:failed with input %b and %b and Output %b", A, B, RES[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#12:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#12:failed with input %b and %b and Output %b", A, B, RES[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#12:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#12:failed with input %b and %b and Output %b", A, B, RES[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #13 multiply infinity by finite");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #13 multiply infinity by 0
************************************************************/
A = 32'b11111111100000000000000000000000; /*which is equivalent to negative infinity*/ 
B = 32'b01000001110100001100110011001101; /*which is equivalent to 26.1*/
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_Verilog_Multiplier_TestCase#13:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Multiplier_TestCase#13:failed with input %b and %b and Output %b", A, B, RES[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#13:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#13:failed with input %b and %b and Output %b", A, B, RES[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_Sequential_Multiplier_TestCase#13:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Sequential_Multiplier_TestCase#13:failed with input %b and %b and Output %b", A, B, RES[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#13:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#13:failed with input %b and %b and Output %b", A, B, RES[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#13:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#13:failed with input %b and %b and Output %b", A, B, RES[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #14 multiply 2 very big numbers that will result in infinity");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #14 multiply 2 very big numbers that will result in infinity
************************************************************/
A = 32'b01111100010100001100110011001101; /*which is equivalent to 4.33660639963e+36*/ 
B = 32'b01111100010100001100110011001101; /*which is equivalent to 4.33660639963e+36*/
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 32'b01111111100000000000000000000000) /*which is equivalent to positive infinity*/
begin
	$display("FPU_Verilog_Multiplier_TestCase#14:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Multiplier_TestCase#14:failed with input %b and %b and Output %b", A, B, RES[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 32'b01111111100000000000000000000000) /*which is equivalent to positive infinity*/
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#14:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#14:failed with input %b and %b and Output %b", A, B, RES[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 32'b01111111100000000000000000000000) /*which is equivalent to positive infinity*/
begin
	$display("FPU_Sequential_Multiplier_TestCase#14:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Sequential_Multiplier_TestCase#14:failed with input %b and %b and Output %b", A, B, RES[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 32'b01111111100000000000000000000000) /*which is equivalent to positive infinity*/
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#14:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#14:failed with input %b and %b and Output %b", A, B, RES[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 32'b01111111100000000000000000000000) /*which is equivalent to positive infinity*/
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#14:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#14:failed with input %b and %b and Output %b", A, B, RES[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #15 multiply 2 very small numbers that will result in 0");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #15 multiply 2 very small numbers that will result in 0
************************************************************/
A = 32'b00000111110100001100110011001101; /*which is equivalent to 3.1416732677e-34*/ 
B = 32'b00000111110100001100110011001101; /*which is equivalent to 3.1416732677e-34*/
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 32'b00000000000000000000000000000000) /*which is equivalent to 0*/
begin
	$display("FPU_Verilog_Multiplier_TestCase#15:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Multiplier_TestCase#15:failed with input %b and %b and Output %b", A, B, RES[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 32'b00000000000000000000000000000000) /*which is equivalent to 0*/
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#14:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Wallace_Tree_Multiplier_TestCase#14:failed with input %b and %b and Output %b", A, B, RES[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 32'b00000000000000000000000000000000) /*which is equivalent to 0*/
begin
	$display("FPU_Sequential_Multiplier_TestCase#14:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Sequential_Multiplier_TestCase#14:failed with input %b and %b and Output %b", A, B, RES[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 32'b00000000000000000000000000000000) /*which is equivalent to 0*/
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#14:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Multiplier_TestCase#14:failed with input %b and %b and Output %b", A, B, RES[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 32'b00000000000000000000000000000000) /*which is equivalent to 0*/
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#14:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_BoothAlgo_Radix_4_Multiplier_TestCase#14:failed with input %b and %b and Output %b", A, B, RES[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

$display("===============================================================================================================================================");
$display("RESULTS");
$display("===============================================================================================================================================");

/************************************************************
print stats
************************************************************/

$display ("Verilog (*) version of multiplication -> Number of success: %d , Number of Failure: %d", NumOfSuccess[0], NumOfFailure[0]);
$display ("Multiplier Wallace Tree -> Number of success: %d , Number of Failure: %d", NumOfSuccess[1], NumOfFailure[1]);
$display ("Sequential Multiplier using shift & accumulate -> Number of success: %d , Number of Failure: %d", NumOfSuccess[2], NumOfFailure[2]);
$display ("Booth Algorithm -> Number of success: %d , Number of Failure: %d", NumOfSuccess[3], NumOfFailure[3]);
$display ("Radix-4 Booth Algorithm -> Number of success: %d , Number of Failure: %d", NumOfSuccess[4], NumOfFailure[4]);


end

endmodule