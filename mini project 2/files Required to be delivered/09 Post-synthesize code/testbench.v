module testbench();

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
wire signed [63:0] RES[0:4];
wire OVFs[0:4];

//instantiation
//VM	   					uut1(RES[0], OVFs[0], A, B, clk, reset, enable);	/*Verilog (‘*’) version of multiplier*/
//multiplierTree    		uut2(RES[1], OVFs[1], A, B, clk, reset, enable);	/*Multiplier Tree (combinational)*/
//sequentialMultiplier   	uut3(RES[2], OVFs[2], A, B, clk, reset, enable);	/*Sequential Multiplier using shift & accumulate*/
//boothAlgo	 			uut4(RES[3], OVFs[3], A, B, clk, reset, enable);	/*Booth Algorithm*/
//boothAlgoR4   			uut5(RES[4], OVFs[4], A, B, clk, reset, enable);	/*Radix-4 Booth Algorithm*/

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
A = 364; 
B = -186;
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == -67704) 
begin
	$display("Verilog_Multiplier_TestCase#1:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Multiplier_TestCase#1:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == -67704) 
begin
	$display("Wallace_Tree_Multiplier_TestCase#1:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Wallace_Tree_Multiplier_TestCase#1:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == -67704) 
begin
	$display("Sequential_Multiplier_TestCase#1:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Sequential_Multiplier_TestCase#1:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == -67704) 
begin
	$display("BoothAlgo_Multiplier_TestCase#1:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("BoothAlgo_Multiplier_TestCase#1:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == -67704) 
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#1:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#1:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #2 Multiplication of positive and positive number.");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #2 Multiplication of positive and positive number.
************************************************************/
A = 364; 
B = 186;
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 67704) 
begin
	$display("Verilog_Multiplier_TestCase#2:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Multiplier_TestCase#2:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 67704) 
begin
	$display("Wallace_Tree_Multiplier_TestCase#2:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Wallace_Tree_Multiplier_TestCase#2:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 67704) 
begin
	$display("Sequential_Multiplier_TestCase#2:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Sequential_Multiplier_TestCase#2:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 67704) 
begin
	$display("BoothAlgo_Multiplier_TestCase#2:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("BoothAlgo_Multiplier_TestCase#2:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 67704) 
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#2:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#2:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end



$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #3 Multiplication of negative and negative number");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #3 Multiplication of negative and negative number.
************************************************************/
A = -364; 
B = -186;
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 67704) 
begin
	$display("Verilog_Multiplier_TestCase#3:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Multiplier_TestCase#3:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 67704) 
begin
	$display("Wallace_Tree_Multiplier_TestCase#3:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Wallace_Tree_Multiplier_TestCase#3:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 67704) 
begin
	$display("Sequential_Multiplier_TestCase#3:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Sequential_Multiplier_TestCase#3:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 67704) 
begin
	$display("BoothAlgo_Multiplier_TestCase#3:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("BoothAlgo_Multiplier_TestCase#3:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 67704) 
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#3:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#3:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end



$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #4 Multiplication of negative and positive number");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #4 Multiplication of negative and positive number.
************************************************************/
A = -364; 
B = 186;
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == -67704) 
begin
	$display("Verilog_Multiplier_TestCase#4:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Multiplier_TestCase#4:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == -67704) 
begin
	$display("Wallace_Tree_Multiplier_TestCase#4:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Wallace_Tree_Multiplier_TestCase#4:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == -67704) 
begin
	$display("Sequential_Multiplier_TestCase#4:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Sequential_Multiplier_TestCase#4:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == -67704) 
begin
	$display("BoothAlgo_Multiplier_TestCase#4:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("BoothAlgo_Multiplier_TestCase#4:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == -67704) 
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#4:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#4:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end



$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #5 Multiplication by zero");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #5 Multiplication by zero.
************************************************************/
A = 0; 
B = 186;
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 0) 
begin
	$display("Verilog_Multiplier_TestCase#5:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Multiplier_TestCase#5:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 0) 
begin
	$display("Wallace_Tree_Multiplier_TestCase#5:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Wallace_Tree_Multiplier_TestCase#5:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 0) 
begin
	$display("Sequential_Multiplier_TestCase#5:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Sequential_Multiplier_TestCase#5:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 0) 
begin
	$display("BoothAlgo_Multiplier_TestCase#5:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("BoothAlgo_Multiplier_TestCase#5:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 0) 
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#5:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#5:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end


$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #6 Multiplication by 1");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #6 Multiplication by 1
************************************************************/
A = 1; 
B = 186;
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 186) 
begin
	$display("Verilog_Multiplier_TestCase#6:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Multiplier_TestCase#6:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 186) 
begin
	$display("Wallace_Tree_Multiplier_TestCase#6:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Wallace_Tree_Multiplier_TestCase#6:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 186) 
begin
	$display("Sequential_Multiplier_TestCase#6:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Sequential_Multiplier_TestCase#6:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 186) 
begin
	$display("BoothAlgo_Multiplier_TestCase#6:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("BoothAlgo_Multiplier_TestCase#6:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 186) 
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#6:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#6:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end



$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #7 multiplication of number by itself");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #7 multiplication of number by itself
************************************************************/
A = 186; 
B = 186;
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 34596) 
begin
	$display("Verilog_Multiplier_TestCase#7:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Multiplier_TestCase#7:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 34596) 
begin
	$display("Wallace_Tree_Multiplier_TestCase#7:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Wallace_Tree_Multiplier_TestCase#7:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 34596) 
begin
	$display("Sequential_Multiplier_TestCase#7:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Sequential_Multiplier_TestCase#7:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 34596) 
begin
	$display("BoothAlgo_Multiplier_TestCase#7:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("BoothAlgo_Multiplier_TestCase#7:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 34596) 
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#7:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#7:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end


$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #8 multiplication of double the negative of a random number");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #8 multiplication of double the negative of a random number
************************************************************/
A = 2; 
B = -54354;
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == -108708) 
begin
	$display("Verilog_Multiplier_TestCase#8:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Multiplier_TestCase#8:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == -108708) 
begin
	$display("Wallace_Tree_Multiplier_TestCase#8:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Wallace_Tree_Multiplier_TestCase#8:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == -108708) 
begin
	$display("Sequential_Multiplier_TestCase#8:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Sequential_Multiplier_TestCase#8:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == -108708) 
begin
	$display("BoothAlgo_Multiplier_TestCase#8:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("BoothAlgo_Multiplier_TestCase#8:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == -108708) 
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#8:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#8:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end



$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #9 multiplication of 2 big numbers");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #9 multiplication of 2 big numbers
************************************************************/
A = 65421; 
B = 59423;
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == 64'd3_887_512_083) 
begin
	$display("Verilog_Multiplier_TestCase#9:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Multiplier_TestCase#9:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == 64'd3_887_512_083) 
begin
	$display("Wallace_Tree_Multiplier_TestCase#9:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Wallace_Tree_Multiplier_TestCase#9:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == 64'd3_887_512_083) 
begin
	$display("Sequential_Multiplier_TestCase#9:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Sequential_Multiplier_TestCase#9:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == 64'd3_887_512_083) 
begin
	$display("BoothAlgo_Multiplier_TestCase#9:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("BoothAlgo_Multiplier_TestCase#9:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == 64'd3_887_512_083) 
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#9:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#9:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end



$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #10 multiplication of small numbers");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #10 multiplication of small numbers
************************************************************/
A = -2; 
B = 3;
enable = 1;
#smallDelay;
enable = 0;
#largeDelay;

/*testing the Verilog (‘*’) version of multiplier*/
if (RES[0] == -6) 
begin
	$display("Verilog_Multiplier_TestCase#10:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Multiplier_TestCase#10:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the Multiplier Tree (combinational) version of multiplier*/
if (RES[1] == -6) 
begin
	$display("Wallace_Tree_Multiplier_TestCase#10:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Wallace_Tree_Multiplier_TestCase#10:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the Sequential Multiplier using shift & accumulate version of multiplier*/
if (RES[2] == -6) 
begin
	$display("Sequential_Multiplier_TestCase#10:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Sequential_Multiplier_TestCase#10:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the Booth Algorithm version of multiplier*/
if (RES[3] == -6) 
begin
	$display("BoothAlgo_Multiplier_TestCase#10:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("BoothAlgo_Multiplier_TestCase#10:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the Radix-4 Booth Algorithm version of multiplier*/
if (RES[4] == -6) 
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#10:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("BoothAlgo_Radix_4_Multiplier_TestCase#10:failed with input %d and %d and Output %d and overflow status %b", A, B, RES[4], OVFs[4]);
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