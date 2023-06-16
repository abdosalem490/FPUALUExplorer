module testbench();

// temp data
integer i = 0;
wire dummy;

//some consts
localparam delay = 50;
localparam size = 32;

//stats
integer NumOfSuccess[0:7];
integer NumOfFailure[0:7];

//regs for inputs
reg signed [size-1:0] A, B;
reg CIN;

//wires for outputs
wire signed [size-1:0] SUM[0:7];
wire COUT[0:7];
wire OVFs[0:7];

//instantiation
VA	  #(size) uut1(A, B, 1'b0, SUM[0], COUT[0], OVFs[0]);				/*adder plus*/
RCA   #(size) uut2(A, B, 1'b0, SUM[1], COUT[1], OVFs[1]);				/*Ripple Carry Adder*/
CSA   #(size) uut3(A, B, {32{1'b0}}, {dummy,SUM[2]},COUT[2], OVFs[2]);	/*Carry Save Adder*/
CLA	  #(size) uut4(A, B, 1'b0, SUM[3], COUT[3], OVFs[3]);				/*Carry Look-Ahead Adder*/
CIA   #(size) uut5(A, B, 1'b0, SUM[4], COUT[4], OVFs[4]);				/*Carry Increment Adder*/
CSKA  #(size) uut6(A, B, 1'b0, SUM[5], COUT[5], OVFs[5]);				/*Carry Skip Adder*/
CBYA  #(size) uut7(A, B, 1'b0, SUM[6], COUT[6], OVFs[6]);				/*Carry Bypass Adder*/
CSelA #(size) uut8(A, B, 1'b0, SUM[7], COUT[7], OVFs[7]);				/*Carry select Adder*/


initial 
begin


//initialize
CIN = 0;
for(i = 0; i < 8; i = i + 1)
begin
	NumOfSuccess[i] = 0;
	NumOfFailure[i] = 0;
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #1 Overflow of positive numbers.");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #1 Overflow of positive numbers.
************************************************************/
A = 32'b0111_1111_1111_1111_1111_1111_1111_1111; /*which is equivalent to 2147483647*/
B = 5;
#delay;

/*testing the Verilog (‘+’) version of adders*/
if (SUM[0] == 32'b1000_0000_0000_0000_0000_0000_0000_0100) /*which is equivalent to -2147483644*/
begin
	$display("Verilog_Adders_TestCase#1:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Adders_TestCase#1:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the ripple carry adder*/
if (SUM[1] == 32'b1000_0000_0000_0000_0000_0000_0000_0100) /*which is equivalent to -2147483644*/
begin
	$display("Ripple_Carry_Adder_TestCase#1:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Ripple_Carry_Adder_TestCase#1:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the carry save adder*/
if (SUM[2] == 32'b1000_0000_0000_0000_0000_0000_0000_0100) /*which is equivalent to -2147483644*/
begin
	$display("Carry_Save_Adder_TestCase#1:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Carry_Save_Adder_TestCase#1:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the carry look-ahead adder*/
if (SUM[3] == 32'b1000_0000_0000_0000_0000_0000_0000_0100) /*which is equivalent to -2147483644*/
begin
	$display("Carry_Look_Ahead_Adder_TestCase#1:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("Carry_Look_Ahead_Adder_TestCase#1:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the carry increment adder*/
if (SUM[4] == 32'b1000_0000_0000_0000_0000_0000_0000_0100) /*which is equivalent to -2147483644*/
begin
	$display("Carry_Increment_Adder_TestCase#1:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("Carry_Increment_Adder_TestCase#1:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing the carry skip adder*/
if (SUM[5] == 32'b1000_0000_0000_0000_0000_0000_0000_0100) /*which is equivalent to -2147483644*/
begin
	$display("Carry_Skip_Adder_TestCase#1:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("Carry_Skip_Adder_TestCase#1:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[5], OVFs[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing the carry bypass adder*/
if (SUM[6] == 32'b1000_0000_0000_0000_0000_0000_0000_0100) /*which is equivalent to -2147483644*/
begin
	$display("Carry_Bypass_Adder_TestCase#1:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("Carry_Bypass_Adder_TestCase#1:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[6], OVFs[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing the carry select adder*/
if (SUM[7] == 32'b1000_0000_0000_0000_0000_0000_0000_0100) /*which is equivalent to -2147483644*/
begin
	$display("Carry_Select_Adder_TestCase#1:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("Carry_Select_Adder_TestCase#1:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[7], OVFs[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #2 Overflow of negative numbers.");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #2 Overflow of negative numbers.
************************************************************/
A = 32'b1000_0000_0000_0000_0000_0000_0000_0100; /*which is equivalent to -2147483644*/
B = -5;
#delay;

/*testing the Verilog (‘+’) version of adders*/
if (SUM[0] == 32'b0111_1111_1111_1111_1111_1111_1111_1111) /*which is equivalent to 2147483647*/
begin
	$display("Verilog_Adders_TestCase#2:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Adders_TestCase#2:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the ripple carry adder*/
if (SUM[1] == 32'b0111_1111_1111_1111_1111_1111_1111_1111) /*which is equivalent to 2147483647*/
begin
	$display("Ripple_Carry_Adder_TestCase#2:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Ripple_Carry_Adder_TestCase#2:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the carry save adder*/
if (SUM[2] == 32'b0111_1111_1111_1111_1111_1111_1111_1111) /*which is equivalent to 2147483647*/
begin
	$display("Carry_Save_Adder_TestCase#2:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Carry_Save_Adder_TestCase#2:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the carry look-ahead adder*/
if (SUM[3] == 32'b0111_1111_1111_1111_1111_1111_1111_1111) /*which is equivalent to 2147483647*/
begin
	$display("Carry_Look_Ahead_Adder_TestCase#2:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("Carry_Look_Ahead_Adder_TestCase#2:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the carry increment adder*/
if (SUM[4] == 32'b0111_1111_1111_1111_1111_1111_1111_1111) /*which is equivalent to 2147483647*/
begin
	$display("Carry_Increment_Adder_TestCase#2:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("Carry_Increment_Adder_TestCase#2:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing the carry skip adder*/
if (SUM[5] == 32'b0111_1111_1111_1111_1111_1111_1111_1111) /*which is equivalent to 2147483647*/
begin
	$display("Carry_Skip_Adder_TestCase#2:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("Carry_Skip_Adder_TestCase#2:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[5], OVFs[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing the carry bypass adder*/
if (SUM[6] == 32'b0111_1111_1111_1111_1111_1111_1111_1111) /*which is equivalent to 2147483647*/
begin
	$display("Carry_Bypass_Adder_TestCase#2:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("Carry_Bypass_Adder_TestCase#2:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[6], OVFs[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing the carry select adder*/
if (SUM[7] == 32'b0111_1111_1111_1111_1111_1111_1111_1111) /*which is equivalent to 2147483647*/
begin
	$display("Carry_Select_Adder_TestCase#2:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("Carry_Select_Adder_TestCase#2:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[7], OVFs[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #3 Addition of positive and negative numbers");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #3 Addition of positive and negative numbers
************************************************************/
A = 5;
B = -10;
#delay;

/*testing the Verilog (‘+’) version of adders*/
if (SUM[0] == -5)
begin
	$display("Verilog_Adders_TestCase#3:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Adders_TestCase#3:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the ripple carry adder*/
if (SUM[1] == -5)
begin
	$display("Ripple_Carry_Adder_TestCase#3:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Ripple_Carry_Adder_TestCase#3:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the carry save adder*/
if (SUM[2] == -5)
begin
	$display("Carry_Save_Adder_TestCase#3:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Carry_Save_Adder_TestCase#3:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the carry look-ahead adder*/
if (SUM[3] == -5)
begin
	$display("Carry_Look_Ahead_Adder_TestCase#3:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("Carry_Look_Ahead_Adder_TestCase#3:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the carry increment adder*/
if (SUM[4] == -5)
begin
	$display("Carry_Increment_Adder_TestCase#3:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("Carry_Increment_Adder_TestCase#3:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing the carry skip adder*/
if (SUM[5] == -5)
begin
	$display("Carry_Skip_Adder_TestCase#3:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("Carry_Skip_Adder_TestCase#3:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[5], OVFs[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing the carry bypass adder*/
if (SUM[6] == -5)
begin
	$display("Carry_Bypass_Adder_TestCase#3:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("Carry_Bypass_Adder_TestCase#3:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[6], OVFs[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing the carry select adder*/
if (SUM[7] == -5)
begin
	$display("Carry_Select_Adder_TestCase#3:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("Carry_Select_Adder_TestCase#3:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[7], OVFs[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #4 Addition of positive and positive numbers");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #4 Addition of positive and positive numbers
************************************************************/
A = 5;
B = 10;
#delay;

/*testing the Verilog (‘+’) version of adders*/
if (SUM[0] == 15)
begin
	$display("Verilog_Adders_TestCase#4:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Adders_TestCase#4:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the ripple carry adder*/
if (SUM[1] == 15)
begin
	$display("Ripple_Carry_Adder_TestCase#4:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Ripple_Carry_Adder_TestCase#4:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the carry save adder*/
if (SUM[2] == 15)
begin
	$display("Carry_Save_Adder_TestCase#4:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Carry_Save_Adder_TestCase#4:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the carry look-ahead adder*/
if (SUM[3] == 15)
begin
	$display("Carry_Look_Ahead_Adder_TestCase#4:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("Carry_Look_Ahead_Adder_TestCase#4:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the carry increment adder*/
if (SUM[4] == 15)
begin
	$display("Carry_Increment_Adder_TestCase#4:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("Carry_Increment_Adder_TestCase#4:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing the carry skip adder*/
if (SUM[5] == 15)
begin
	$display("Carry_Skip_Adder_TestCase#4:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("Carry_Skip_Adder_TestCase#4:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[5], OVFs[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing the carry bypass adder*/
if (SUM[6] == 15)
begin
	$display("Carry_Bypass_Adder_TestCase#4:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("Carry_Bypass_Adder_TestCase#4:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[6], OVFs[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing the carry select adder*/
if (SUM[7] == 15)
begin
	$display("Carry_Select_Adder_TestCase#4:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("Carry_Select_Adder_TestCase#4:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[7], OVFs[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end


$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #5 Addition of negative and negative number");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #5 Addition of negative and negative number
************************************************************/
A = -5;
B = -10;
#delay;

/*testing the Verilog (‘+’) version of adders*/
if (SUM[0] == -15)
begin
	$display("Verilog_Adders_TestCase#5:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Adders_TestCase#5:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the ripple carry adder*/
if (SUM[1] == -15)
begin
	$display("Ripple_Carry_Adder_TestCase#5:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Ripple_Carry_Adder_TestCase#5:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the carry save adder*/
if (SUM[2] == -15)
begin
	$display("Carry_Save_Adder_TestCase#5:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Carry_Save_Adder_TestCase#5:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the carry look-ahead adder*/
if (SUM[3] == -15)
begin
	$display("Carry_Look_Ahead_Adder_TestCase#5:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("Carry_Look_Ahead_Adder_TestCase#5:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the carry increment adder*/
if (SUM[4] == -15)
begin
	$display("Carry_Increment_Adder_TestCase#5:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("Carry_Increment_Adder_TestCase#5:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing the carry skip adder*/
if (SUM[5] == -15)
begin
	$display("Carry_Skip_Adder_TestCase#5:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("Carry_Skip_Adder_TestCase#5:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[5], OVFs[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing the carry bypass adder*/
if (SUM[6] == -15)
begin
	$display("Carry_Bypass_Adder_TestCase#5:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("Carry_Bypass_Adder_TestCase#5:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[6], OVFs[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing the carry select adder*/
if (SUM[7] == -15)
begin
	$display("Carry_Select_Adder_TestCase#5:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("Carry_Select_Adder_TestCase#5:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[7], OVFs[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #6 Addition of big negative and big positive number");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #6 Addition of big negative and big positive number
************************************************************/
A = -214748300;
B = 250000014;
#delay;

/*testing the Verilog (‘+’) version of adders*/
if (SUM[0] == 32'b0010_0001_1001_1110_0110_0000_0010)		/*which is equivalent to 35251714*/
begin
	$display("Verilog_Adders_TestCase#6:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Adders_TestCase#6:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the ripple carry adder*/
if (SUM[1] == 32'b0010_0001_1001_1110_0110_0000_0010)		/*which is equivalent to 35251714*/
begin
	$display("Ripple_Carry_Adder_TestCase#6:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Ripple_Carry_Adder_TestCase#6:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the carry save adder*/
if (SUM[2] == 32'b0010_0001_1001_1110_0110_0000_0010)		/*which is equivalent to 35251714*/
begin
	$display("Carry_Save_Adder_TestCase#6:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Carry_Save_Adder_TestCase#6:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the carry look-ahead adder*/
if (SUM[3] == 32'b0010_0001_1001_1110_0110_0000_0010)		/*which is equivalent to 35251714*/
begin
	$display("Carry_Look_Ahead_Adder_TestCase#6:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("Carry_Look_Ahead_Adder_TestCase#6:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the carry increment adder*/
if (SUM[4] == 32'b0010_0001_1001_1110_0110_0000_0010)		/*which is equivalent to 35251714*/
begin
	$display("Carry_Increment_Adder_TestCase#6:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("Carry_Increment_Adder_TestCase#6:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing the carry skip adder*/
if (SUM[5] == 32'b0010_0001_1001_1110_0110_0000_0010)		/*which is equivalent to 35251714*/
begin
	$display("Carry_Skip_Adder_TestCase#6:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("Carry_Skip_Adder_TestCase#6:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[5], OVFs[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing the carry bypass adder*/
if (SUM[6] == 32'b0010_0001_1001_1110_0110_0000_0010)		/*which is equivalent to 35251714*/
begin
	$display("Carry_Bypass_Adder_TestCase#6:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("Carry_Bypass_Adder_TestCase#6:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[6], OVFs[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing the carry select adder*/
if (SUM[7] == 32'b0010_0001_1001_1110_0110_0000_0010)		/*which is equivalent to 35251714*/
begin
	$display("Carry_Select_Adder_TestCase#6:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("Carry_Select_Adder_TestCase#6:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[7], OVFs[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #7 Addition of INT_MAX and INT_MAX");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #7 Addition of INT_MAX and INT_MAX
************************************************************/
A = 32'b0111_1111_1111_1111_1111_1111_1111_1111;
B = 32'b0111_1111_1111_1111_1111_1111_1111_1111;
#delay;

/*testing the Verilog (‘+’) version of adders*/
if (SUM[0] == 32'b1111_1111_1111_1111_1111_1111_1111_1110)	/*which is equivalent to -2*/
begin
	$display("Verilog_Adders_TestCase#7:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Adders_TestCase#7:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the ripple carry adder*/
if (SUM[1] == 32'b1111_1111_1111_1111_1111_1111_1111_1110)	/*which is equivalent to -2*/
begin
	$display("Ripple_Carry_Adder_TestCase#7:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Ripple_Carry_Adder_TestCase#7:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the carry save adder*/
if (SUM[2] == 32'b1111_1111_1111_1111_1111_1111_1111_1110)	/*which is equivalent to -2*/
begin
	$display("Carry_Save_Adder_TestCase#7:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Carry_Save_Adder_TestCase#7:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the carry look-ahead adder*/
if (SUM[3] == 32'b1111_1111_1111_1111_1111_1111_1111_1110)	/*which is equivalent to -2*/
begin
	$display("Carry_Look_Ahead_Adder_TestCase#7:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("Carry_Look_Ahead_Adder_TestCase#7:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the carry increment adder*/
if (SUM[4] == 32'b1111_1111_1111_1111_1111_1111_1111_1110)	/*which is equivalent to -2*/
begin
	$display("Carry_Increment_Adder_TestCase#7:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("Carry_Increment_Adder_TestCase#7:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing the carry skip adder*/
if (SUM[5] == 32'b1111_1111_1111_1111_1111_1111_1111_1110)	/*which is equivalent to -2*/
begin
	$display("Carry_Skip_Adder_TestCase#7:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("Carry_Skip_Adder_TestCase#7:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[5], OVFs[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing the carry bypass adder*/
if (SUM[6] == 32'b1111_1111_1111_1111_1111_1111_1111_1110)	/*which is equivalent to -2*/
begin
	$display("Carry_Bypass_Adder_TestCase#7:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("Carry_Bypass_Adder_TestCase#7:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[6], OVFs[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing the carry select adder*/
if (SUM[7] == 32'b1111_1111_1111_1111_1111_1111_1111_1110)	/*which is equivalent to -2*/
begin
	$display("Carry_Select_Adder_TestCase#7:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("Carry_Select_Adder_TestCase#7:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[7], OVFs[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #8 Addition of INT_MIN and INT_MIN");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #8 Addition of INT_MIN and INT_MIN
************************************************************/
A = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
B = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
#delay;

/*testing the Verilog (‘+’) version of adders*/
if (SUM[0] == 0)
begin
	$display("Verilog_Adders_TestCase#8:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Adders_TestCase#8:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the ripple carry adder*/
if (SUM[1] == 0)
begin
	$display("Ripple_Carry_Adder_TestCase#8:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Ripple_Carry_Adder_TestCase#8:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the carry save adder*/
if (SUM[2] == 0)
begin
	$display("Carry_Save_Adder_TestCase#8:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Carry_Save_Adder_TestCase#8:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the carry look-ahead adder*/
if (SUM[3] == 0)
begin
	$display("Carry_Look_Ahead_Adder_TestCase#8:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("Carry_Look_Ahead_Adder_TestCase#8:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the carry increment adder*/
if (SUM[4] == 0)
begin
	$display("Carry_Increment_Adder_TestCase#8:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("Carry_Increment_Adder_TestCase#8:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing the carry skip adder*/
if (SUM[5] == 0)
begin
	$display("Carry_Skip_Adder_TestCase#8:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("Carry_Skip_Adder_TestCase#8:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[5], OVFs[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing the carry bypass adder*/
if (SUM[6] == 0)
begin
	$display("Carry_Bypass_Adder_TestCase#8:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("Carry_Bypass_Adder_TestCase#8:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[6], OVFs[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing the carry select adder*/
if (SUM[7] == 0)
begin
	$display("Carry_Select_Adder_TestCase#8:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("Carry_Select_Adder_TestCase#8:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[7], OVFs[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #9 Addition of 0 and INT_MIN");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #9 Addition of 0 and INT_MIN
************************************************************/
A = 0;
B = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
#delay;

/*testing the Verilog (‘+’) version of adders*/
if (SUM[0] == 32'b1000_0000_0000_0000_0000_0000_0000_0000)		
begin
	$display("Verilog_Adders_TestCase#9:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Adders_TestCase#9:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the ripple carry adder*/
if (SUM[1] == 32'b1000_0000_0000_0000_0000_0000_0000_0000)		
begin
	$display("Ripple_Carry_Adder_TestCase#9:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Ripple_Carry_Adder_TestCase#9:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the carry save adder*/
if (SUM[2] == 32'b1000_0000_0000_0000_0000_0000_0000_0000)
begin
	$display("Carry_Save_Adder_TestCase#9:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Carry_Save_Adder_TestCase#9:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the carry look-ahead adder*/
if (SUM[3] == 32'b1000_0000_0000_0000_0000_0000_0000_0000)
begin
	$display("Carry_Look_Ahead_Adder_TestCase#9:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("Carry_Look_Ahead_Adder_TestCase#9:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the carry increment adder*/
if (SUM[4] == 32'b1000_0000_0000_0000_0000_0000_0000_0000)
begin
	$display("Carry_Increment_Adder_TestCase#9:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("Carry_Increment_Adder_TestCase#9:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing the carry skip adder*/
if (SUM[5] == 32'b1000_0000_0000_0000_0000_0000_0000_0000)
begin
	$display("Carry_Skip_Adder_TestCase#9:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("Carry_Skip_Adder_TestCase#9:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[5], OVFs[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing the carry bypass adder*/
if (SUM[6] == 32'b1000_0000_0000_0000_0000_0000_0000_0000)
begin
	$display("Carry_Bypass_Adder_TestCase#9:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("Carry_Bypass_Adder_TestCase#9:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[6], OVFs[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing the carry select adder*/
if (SUM[7] == 32'b1000_0000_0000_0000_0000_0000_0000_0000)
begin
	$display("Carry_Select_Adder_TestCase#9:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("Carry_Select_Adder_TestCase#9:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[7], OVFs[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #10 Addition of 0 and INT_MAX");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #10 Addition of 0 and INT_MAX
************************************************************/
A = 0;
B = 32'b0111_1111_1111_1111_1111_1111_1111_1111;
#delay;

/*testing the Verilog (‘+’) version of adders*/
if (SUM[0] == 32'b0111_1111_1111_1111_1111_1111_1111_1111)
begin
	$display("Verilog_Adders_TestCase#10:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("Verilog_Adders_TestCase#10:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[0], OVFs[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing the ripple carry adder*/
if (SUM[1] == 32'b0111_1111_1111_1111_1111_1111_1111_1111)
begin
	$display("Ripple_Carry_Adder_TestCase#10:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("Ripple_Carry_Adder_TestCase#10:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[1], OVFs[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing the carry save adder*/
if (SUM[2] == 32'b0111_1111_1111_1111_1111_1111_1111_1111)
begin
	$display("Carry_Save_Adder_TestCase#10:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("Carry_Save_Adder_TestCase#10:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[2], OVFs[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing the carry look-ahead adder*/
if (SUM[3] == 32'b0111_1111_1111_1111_1111_1111_1111_1111)
begin
	$display("Carry_Look_Ahead_Adder_TestCase#10:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("Carry_Look_Ahead_Adder_TestCase#10:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[3], OVFs[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing the carry increment adder*/
if (SUM[4] == 32'b0111_1111_1111_1111_1111_1111_1111_1111)
begin
	$display("Carry_Increment_Adder_TestCase#10:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("Carry_Increment_Adder_TestCase#10:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[4], OVFs[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing the carry skip adder*/
if (SUM[5] == 32'b0111_1111_1111_1111_1111_1111_1111_1111)
begin
	$display("Carry_Skip_Adder_TestCase#10:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("Carry_Skip_Adder_TestCase#10:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[5], OVFs[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing the carry bypass adder*/
if (SUM[6] == 32'b0111_1111_1111_1111_1111_1111_1111_1111)
begin
	$display("Carry_Bypass_Adder_TestCase#10:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("Carry_Bypass_Adder_TestCase#10:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[6], OVFs[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing the carry select adder*/
if (SUM[7] == 32'b0111_1111_1111_1111_1111_1111_1111_1111)
begin
	$display("Carry_Select_Adder_TestCase#10:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("Carry_Select_Adder_TestCase#10:failed with input %d and %d and Output %d and overflow status %b", A, B, SUM[7], OVFs[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("===============================================================================================================================================");
$display("RESULTS");
$display("===============================================================================================================================================");
/************************************************************
print stats
************************************************************/

$display ("Verilog (+) version of adders -> Number of success: %d , Number of Failure: %d", NumOfSuccess[0], NumOfFailure[0]);
$display ("ripple carry adder -> Number of success: %d , Number of Failure: %d", NumOfSuccess[1], NumOfFailure[1]);
$display ("carry save adder -> Number of success: %d , Number of Failure: %d", NumOfSuccess[2], NumOfFailure[2]);
$display ("Carry Look-Ahead Adder -> Number of success: %d , Number of Failure: %d", NumOfSuccess[3], NumOfFailure[3]);
$display ("carry increment adder -> Number of success: %d , Number of Failure: %d", NumOfSuccess[4], NumOfFailure[4]);
$display ("Carry Skip Adder -> Number of success: %d , Number of Failure: %d", NumOfSuccess[5], NumOfFailure[5]);
$display ("Carry Bypass Adder -> Number of success: %d , Number of Failure: %d", NumOfSuccess[6], NumOfFailure[6]);
$display ("Carry Select Adder -> Number of success: %d , Number of Failure: %d", NumOfSuccess[7], NumOfFailure[7]);

end

endmodule