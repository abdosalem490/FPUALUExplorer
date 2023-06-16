module FPU_testbench();

// temp data
integer i = 0;
wire dummy;

//some consts
localparam delay = 50;
localparam mantessa_size = 23;
localparam exponent_size = 8;
localparam total_size = 32;
localparam adder_size = 32;


//stats
integer NumOfSuccess[0:7];
integer NumOfFailure[0:7];

//regs for inputs
reg [total_size-1:0] A, B;

//wires for outputs
wire [total_size-1:0] SUM[0:7];

//instantiation
FPU_VA		#(.M_size(mantessa_size), .E_size(exponent_size), .total_size(total_size), .adderSize(adder_size)) uut1(A, B, SUM[0]);		/*adder plus*/
FPU_RCA		#(.M_size(mantessa_size), .E_size(exponent_size), .total_size(total_size), .adderSize(adder_size)) uut2(A, B, SUM[1]);		/*Ripple Carry Adder*/
FPU_CSA		#(.M_size(mantessa_size), .E_size(exponent_size), .total_size(total_size), .adderSize(adder_size)) uut3(A, B, SUM[2]);		/*Carry Save Adder*/
FPU_CSA		#(.M_size(mantessa_size), .E_size(exponent_size), .total_size(total_size), .adderSize(adder_size)) uut4(A, B, SUM[3]);		/*Carry Look-Ahead Adder*/
FPU_CIA		#(.M_size(mantessa_size), .E_size(exponent_size), .total_size(total_size), .adderSize(adder_size)) uut5(A, B, SUM[4]);		/*Carry Increment Adder*/
FPU_CSKA	#(.M_size(mantessa_size), .E_size(exponent_size), .total_size(total_size), .adderSize(adder_size)) uut6(A, B, SUM[5]);		/*Carry Skip Adder*/
FPU_CBYA	#(.M_size(mantessa_size), .E_size(exponent_size), .total_size(total_size), .adderSize(adder_size)) uut7(A, B, SUM[6]);		/*Carry Bypass Adder*/
FPU_CSelA	#(.M_size(mantessa_size), .E_size(exponent_size), .total_size(total_size), .adderSize(adder_size)) uut8(A, B, SUM[7]);		/*Carry select Adder*/


initial 
begin

//initialize
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
A = 32'b01111111011111111111111111111111; /*which is equivalent to 3.40282346639e+38*/
B = 32'b01111111011111111111111111111111; /*which is equivalent to 3.40282346639e+38*/
#delay;

/*testing FPU with the Verilog (‘+’) version of adders*/
if (SUM[0] == 32'b01111111100000000000000000000000) /*which is equivalent to psositive infinity*/
begin
	$display("FPU_Verilog_Adders_TestCase#1:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Adders_TestCase#1:failed with input %b and %b and Output %b", A, B, SUM[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing FPU with the ripple carry adder*/
if (SUM[1] == 32'b01111111100000000000000000000000) /*which is equivalent to psositive infinity*/
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#1:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#1:failed with input %b and %b and Output %b", A, B, SUM[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing FPU with the carry save adder*/
if (SUM[2] == 32'b01111111100000000000000000000000) /*which is equivalent to psositive infinity*/
begin
	$display("FPU_Carry_Save_Adder_TestCase#1:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Carry_Save_Adder_TestCase#1:failed with input %b and %b and Output %b", A, B, SUM[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing FPU with the carry look-ahead adder*/
if (SUM[3] == 32'b01111111100000000000000000000000) /*which is equivalent to psositive infinity*/
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#1:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#1:failed with input %b and %b and Output %b", A, B, SUM[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing FPU with the carry increment adder*/
if (SUM[4] == 32'b01111111100000000000000000000000) /*which is equivalent to psositive infinity*/
begin
	$display("FPU_Carry_Increment_Adder_TestCase#1:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_Carry_Increment_Adder_TestCase#1:failed with input %b and %b and Output %b", A, B, SUM[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing FPU with the carry skip adder*/
if (SUM[5] == 32'b01111111100000000000000000000000) /*which is equivalent to psositive infinity*/
begin
	$display("FPU_Carry_Skip_Adder_TestCase#1:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("FPU_Carry_Skip_Adder_TestCase#1:failed with input %b and %b and Output %b", A, B, SUM[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing FPU with the carry bypass adder*/
if (SUM[6] == 32'b01111111100000000000000000000000) /*which is equivalent to psositive infinity*/
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#1:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#1:failed with input %b and %b and Output %b", A, B, SUM[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing FPU with the carry select adder*/
if (SUM[7] == 32'b01111111100000000000000000000000) /*which is equivalent to psositive infinity*/
begin
	$display("FPU_Carry_Select_Adder_TestCase#1:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("FPU_Carry_Select_Adder_TestCase#1:failed with input %b and %b and Output %b", A, B, SUM[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #2 Overflow of negative numbers.");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #2 Overflow of negative numbers.
************************************************************/
A = 32'b11111111011111111111111111111111; /*which is equivalent to -3.40282346639e+38*/
B = 32'b11111111011111111111111111111111; /*which is equivalent to -3.40282346639e+38*/
#delay;

/*testing the Verilog (‘+’) version of adders*/
if (SUM[0] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_Verilog_Adders_TestCase#2:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Adders_TestCase#2:failed with input %b and %b and Output %b", A, B, SUM[0]);
	NumOfFailure[0] = NumOfFailure[0] + 1; 
end

/*testing FPU with the ripple carry adder*/
if (SUM[1] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#2:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#2:failed with input %b and %b and Output %b", A, B, SUM[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing FPU with the carry save adder*/
if (SUM[2] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_Carry_Save_Adder_TestCase#2:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Carry_Save_Adder_TestCase#2:failed with input %b and %b and Output %b", A, B, SUM[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing FPU with the carry look-ahead adder*/
if (SUM[3] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#2:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#2:failed with input %b and %b and Output %b", A, B, SUM[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing FPU with the carry increment adder*/
if (SUM[4] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_Carry_Increment_Adder_TestCase#2:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_Carry_Increment_Adder_TestCase#2:failed with input %b and %b and Output %b", A, B, SUM[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing FPU with the carry skip adder*/
if (SUM[5] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_Carry_Skip_Adder_TestCase#2:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("FPU_Carry_Skip_Adder_TestCase#2:failed with input %b and %b and Output %b", A, B, SUM[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing FPU with the carry bypass adder*/
if (SUM[6] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#2:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#2:failed with input %b and %b and Output %b", A, B, SUM[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing FPU with the carry select adder*/
if (SUM[7] == 32'b11111111100000000000000000000000) /*which is equivalent to negative infinity*/
begin
	$display("FPU_Carry_Select_Adder_TestCase#2:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("FPU_Carry_Select_Adder_TestCase#2:failed with input %b and %b and Output %b", A, B, SUM[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #3 Addition of positive and negative numbers");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #3 Addition of positive and negative numbers
************************************************************/
A = 32'b01000000101101100110011001100110;	/*which is equivalent to 5.7*/
B = 32'b11000001001001001100110011001101;	/*which is equivalent to -10.3*/
#delay;

/*testing FPU with the Verilog (‘+’) version of adders*/
if (SUM[0] == 32'b11000000100100110011001100110100) 	/*which is equivalent to -4.6000003814697265625*/
begin
	$display("FPU_Verilog_Adders_TestCase#3:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Adders_TestCase#3:failed with input %b and %b and Output %b", A, B, SUM[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing FPU with the ripple carry adder*/
if (SUM[1] == 32'b11000000100100110011001100110100) 	/*which is equivalent to -4.6000003814697265625*/
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#3:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#3:failed with input %b and %b and Output %b", A, B, SUM[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing FPU with the carry save adder*/
if (SUM[2] == 32'b11000000100100110011001100110100) 	/*which is equivalent to -4.6000003814697265625*/
begin
	$display("FPU_Carry_Save_Adder_TestCase#3:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Carry_Save_Adder_TestCase#3:failed with input %b and %b and Output %b", A, B, SUM[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing FPU with the carry look-ahead adder*/
if (SUM[3] == 32'b11000000100100110011001100110100) 	/*which is equivalent to -4.6000003814697265625*/
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#3:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#3:failed with input %b and %b and Output %b", A, B, SUM[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing FPU with the carry increment adder*/
if (SUM[4] == 32'b11000000100100110011001100110100) 	/*which is equivalent to -4.6000003814697265625*/
begin
	$display("FPU_Carry_Increment_Adder_TestCase#3:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_Carry_Increment_Adder_TestCase#3:failed with input %b and %b and Output %b", A, B, SUM[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing FPU with the carry skip adder*/
if (SUM[5] == 32'b11000000100100110011001100110100) 	/*which is equivalent to -4.6000003814697265625*/
begin
	$display("FPU_Carry_Skip_Adder_TestCase#3:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("FPU_Carry_Skip_Adder_TestCase#3:failed with input %b and %b and Output %b", A, B, SUM[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing FPU with the carry bypass adder*/
if (SUM[6] == 32'b11000000100100110011001100110100) 	/*which is equivalent to -4.6000003814697265625*/
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#3:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#3:failed with input %b and %b and Output %b", A, B, SUM[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing FPU with the carry select adder*/
if (SUM[7] == 32'b11000000100100110011001100110100) 	/*which is equivalent to -4.6000003814697265625*/
begin
	$display("FPU_Carry_Select_Adder_TestCase#3:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("FPU_Carry_Select_Adder_TestCase#3:failed with input %b and %b and Output %b", A, B, SUM[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #4 Addition of positive and positive numbers");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #4 Addition of positive and positive numbers
************************************************************/
A = 32'b01000000101101100110011001100110;	/*which is equivalent to 5.7*/
B = 32'b01000001001001001100110011001101;	/*which is equivalent to 10.3*/
#delay;

/*testing FPU with the Verilog (‘+’) version of adders*/
if (SUM[0] == 32'b01000001100000000000000000000000)		/*which is equivalent to 16*/
begin
	$display("FPU_Verilog_Adders_TestCase#4:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Adders_TestCase#4:failed with input %b and %b and Output %b", A, B, SUM[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing FPU with the ripple carry adder*/
if (SUM[1] == 32'b01000001100000000000000000000000)		/*which is equivalent to 16*/
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#4:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#4:failed with input %b and %b and Output %b", A, B, SUM[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing FPU with the carry save adder*/
if (SUM[2] == 32'b01000001100000000000000000000000)		/*which is equivalent to 16*/
begin
	$display("FPU_Carry_Save_Adder_TestCase#4:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Carry_Save_Adder_TestCase#4:failed with input %b and %b and Output %b", A, B, SUM[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing FPU with the carry look-ahead adder*/
if (SUM[3] == 32'b01000001100000000000000000000000)		/*which is equivalent to 16*/
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#4:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#4:failed with input %b and %b and Output %b", A, B, SUM[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing FPU with the carry increment adder*/
if (SUM[4] == 32'b01000001100000000000000000000000)		/*which is equivalent to 16*/
begin
	$display("FPU_Carry_Increment_Adder_TestCase#4:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_Carry_Increment_Adder_TestCase#4:failed with input %b and %b and Output %b", A, B, SUM[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing FPU with the carry skip adder*/
if (SUM[5] == 32'b01000001100000000000000000000000)		/*which is equivalent to 16*/
begin
	$display("FPU_Carry_Skip_Adder_TestCase#4:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("FPU_Carry_Skip_Adder_TestCase#4:failed with input %b and %b and Output %b", A, B, SUM[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing FPU with the carry bypass adder*/
if (SUM[6] == 32'b01000001100000000000000000000000)		/*which is equivalent to 16*/
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#4:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#4:failed with input %b and %b and Output %b", A, B, SUM[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing FPU with the carry select adder*/
if (SUM[7] == 32'b01000001100000000000000000000000)		/*which is equivalent to 16*/
begin
	$display("FPU_Carry_Select_Adder_TestCase#4:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("FPU_Carry_Select_Adder_TestCase#4:failed with input %b and %b and Output %b", A, B, SUM[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #5 Addition of negative and negative number");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #5 Addition of negative and negative number
************************************************************/
A = 32'b11000000101101100110011001100110;	/*which is equivalent to -5.7*/
B = 32'b11000001001001001100110011001101;	/*which is equivalent to -10.3*/
#delay;	

/*testing FPU with the Verilog (‘+’) version of adders*/
if (SUM[0] == 32'b11000001100000000000000000000000)		/*which is equivalent to -16*/
begin
	$display("FPU_Verilog_Adders_TestCase#5:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Adders_TestCase#5:failed with input %b and %b and Output %b", A, B, SUM[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing FPU with the ripple carry adder*/
if (SUM[1] == 32'b11000001100000000000000000000000)		/*which is equivalent to -16*/
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#5:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#5:failed with input %b and %b and Output %b", A, B, SUM[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing FPU with the carry save adder*/
if (SUM[2] == 32'b11000001100000000000000000000000)		/*which is equivalent to -16*/
begin
	$display("FPU_Carry_Save_Adder_TestCase#5:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Carry_Save_Adder_TestCase#5:failed with input %b and %b and Output %b", A, B, SUM[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing FPU with the carry look-ahead adder*/
if (SUM[3] == 32'b11000001100000000000000000000000)		/*which is equivalent to -16*/
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#5:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#5:failed with input %b and %b and Output %b", A, B, SUM[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing FPU with the carry increment adder*/
if (SUM[4] == 32'b11000001100000000000000000000000)		/*which is equivalent to -16*/
begin
	$display("FPU_Carry_Increment_Adder_TestCase#5:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_Carry_Increment_Adder_TestCase#5:failed with input %b and %b and Output %b", A, B, SUM[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing FPU with the carry skip adder*/
if (SUM[5] == 32'b11000001100000000000000000000000)		/*which is equivalent to -16*/
begin
	$display("FPU_Carry_Skip_Adder_TestCase#5:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("FPU_Carry_Skip_Adder_TestCase#5:failed with input %b and %b and Output %b", A, B, SUM[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing FPU with the carry bypass adder*/
if (SUM[6] == 32'b11000001100000000000000000000000)		/*which is equivalent to -16*/
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#5:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#5:failed with input %b and %b and Output %b", A, B, SUM[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing FPU with the carry select adder*/
if (SUM[7] == 32'b11000001100000000000000000000000)		/*which is equivalent to -16*/
begin
	$display("FPU_Carry_Select_Adder_TestCase#5:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("FPU_Carry_Select_Adder_TestCase#5:failed with input %b and %b and Output %b", A, B, SUM[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #6 Addition of negative infinity and positive infinity");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #6 Addition of negative infinity and positive infinity
************************************************************/
A = 32'b01111111100000000000000000000000; /*which is equivalent to positive infinity*/
B = 32'b11111111100000000000000000000000; /*which is equivalent to negative infinity*/
#delay;

/*testing FPU with the Verilog (‘+’) version of adders*/
if (SUM[0] == 32'b01111111100000000000000000000001)		/*which is equivalent to NAN*/
begin
	$display("FPU_Verilog_Adders_TestCase#6:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Adders_TestCase#6:failed with input %b and %b and Output %b", A, B, SUM[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing FPU with the ripple carry adder*/
if (SUM[1] == 32'b01111111100000000000000000000001)		/*which is equivalent to NAN*/
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#6:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#6:failed with input %b and %b and Output %b", A, B, SUM[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing FPU with the carry save adder*/
if (SUM[2] == 32'b01111111100000000000000000000001)		/*which is equivalent to NAN*/
begin
	$display("FPU_Carry_Save_Adder_TestCase#6:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Carry_Save_Adder_TestCase#6:failed with input %b and %b and Output %b", A, B, SUM[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing FPU with the carry look-ahead adder*/
if (SUM[3] == 32'b01111111100000000000000000000001)		/*which is equivalent to NAN*/
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#6:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#6:failed with input %b and %b and Output %b", A, B, SUM[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing FPU with the carry increment adder*/
if (SUM[4] == 32'b01111111100000000000000000000001)		/*which is equivalent to NAN*/
begin
	$display("FPU_Carry_Increment_Adder_TestCase#6:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_Carry_Increment_Adder_TestCase#6:failed with input %b and %b and Output %b", A, B, SUM[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing FPU with the carry skip adder*/
if (SUM[5] == 32'b01111111100000000000000000000001)		/*which is equivalent to NAN*/
begin
	$display("FPU_Carry_Skip_Adder_TestCase#6:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("FPU_Carry_Skip_Adder_TestCase#6:failed with input %b and %b and Output %b", A, B, SUM[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing FPU with the carry bypass adder*/
if (SUM[6] == 32'b01111111100000000000000000000001)		/*which is equivalent to NAN*/
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#6:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#6:failed with input %b and %b and Output %b", A, B, SUM[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing FPU with the carry select adder*/
if (SUM[7] == 32'b01111111100000000000000000000001)		/*which is equivalent to NAN*/
begin
	$display("FPU_Carry_Select_Adder_TestCase#6:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("FPU_Carry_Select_Adder_TestCase#6:failed with input %b and %b and Output %b", A, B, SUM[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #7 Addition of small numbers");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #7 Addition of 0.75 and -0.25
************************************************************/
A = 32'b00111111010000000000000000000000; /*which is equivalent to 0.75*/
B = 32'b10111110100000000000000000000000; /*which is equivalent to -0.25*/
#delay;

/*testing FPU with the Verilog (‘+’) version of adders*/
if (SUM[0] == 32'b10111111000000000000000000000000)		/*which is equivalent to -0.5*/
begin
	$display("FPU_Verilog_Adders_TestCase#7:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Adders_TestCase#7:failed with input %b and %b and Output %b", A, B, SUM[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing FPU with the ripple carry adder*/
if (SUM[1] == 32'b10111111000000000000000000000000)		/*which is equivalent to -0.5*/
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#7:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#7:failed with input %b and %b and Output %b", A, B, SUM[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing FPU with the carry save adder*/
if (SUM[2] == 32'b10111111000000000000000000000000)		/*which is equivalent to -0.5*/
begin
	$display("FPU_Carry_Save_Adder_TestCase#7:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Carry_Save_Adder_TestCase#7:failed with input %b and %b and Output %b", A, B, SUM[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end	

/*testing FPU with the carry look-ahead adder*/
if (SUM[3] == 32'b10111111000000000000000000000000)		/*which is equivalent to -0.5*/
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#7:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#7:failed with input %b and %b and Output %b", A, B, SUM[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing FPU with the carry increment adder*/
if (SUM[4] == 32'b10111111000000000000000000000000)		/*which is equivalent to -0.5*/
begin
	$display("FPU_Carry_Increment_Adder_TestCase#7:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_Carry_Increment_Adder_TestCase#7:failed with input %b and %b and Output %b", A, B, SUM[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing FPU with the carry skip adder*/
if (SUM[5] == 32'b10111111000000000000000000000000)		/*which is equivalent to -0.5*/
begin
	$display("FPU_Carry_Skip_Adder_TestCase#7:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("FPU_Carry_Skip_Adder_TestCase#7:failed with input %b and %b and Output %b", A, B, SUM[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing FPU with the carry bypass adder*/
if (SUM[6] == 32'b10111111000000000000000000000000)		/*which is equivalent to -0.5*/
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#7:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#7:failed with input %b and %b and Output %b", A, B, SUM[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing FPU with the carry select adder*/
if (SUM[7] == 32'b10111111000000000000000000000000)		/*which is equivalent to -0.5*/
begin
	$display("FPU_Carry_Select_Adder_TestCase#7:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("FPU_Carry_Select_Adder_TestCase#7:failed with input %b and %b and Output %b", A, B, SUM[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #8 Addition of positive big numbers and negative small numbers");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #8 Addition of positive big numbers and negative small numbers
************************************************************/
A = 32'b01000100001111001100000000000000; /*which is equivalent to 755*/
B = 32'b10111110100110011001100110011010; /*which is equivalent to -0.3*/
#delay;

/*testing FPU with the Verilog (‘+’) version of adders*/
if (SUM[0] == 32'b11000100001111001010110011001100)		/*which is equivalent to -754.699951171875*/
begin
	$display("FPU_Verilog_Adders_TestCase#8:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Adders_TestCase#8:failed with input %b and %b and Output %b", A, B, SUM[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing FPU with the ripple carry adder*/
if (SUM[1] == 32'b11000100001111001010110011001100)		/*which is equivalent to -754.699951171875*/
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#8:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#8:failed with input %b and %b and Output %b", A, B, SUM[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing FPU with the carry save adder*/
if (SUM[2] == 32'b11000100001111001010110011001100)		/*which is equivalent to -754.699951171875*/
begin
	$display("FPU_Carry_Save_Adder_TestCase#8:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Carry_Save_Adder_TestCase#8:failed with input %b and %b and Output %b", A, B, SUM[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing FPU with the carry look-ahead adder*/
if (SUM[3] == 32'b11000100001111001010110011001100)		/*which is equivalent to -754.699951171875*/
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#8:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#8:failed with input %b and %b and Output %b", A, B, SUM[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing FPU with the carry increment adder*/
if (SUM[4] == 32'b11000100001111001010110011001100)		/*which is equivalent to -754.699951171875*/
begin
	$display("FPU_Carry_Increment_Adder_TestCase#8:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_Carry_Increment_Adder_TestCase#8:failed with input %b and %b and Output %b", A, B, SUM[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing FPU with the carry skip adder*/
if (SUM[5] == 32'b11000100001111001010110011001100)		/*which is equivalent to -754.699951171875*/
begin
	$display("FPU_Carry_Skip_Adder_TestCase#8:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("FPU_Carry_Skip_Adder_TestCase#8:failed with input %b and %b and Output %b", A, B, SUM[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing FPU with the carry bypass adder*/
if (SUM[6] == 32'b11000100001111001010110011001100)		/*which is equivalent to -754.699951171875*/
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#8:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#8:failed with input %b and %b and Output %b", A, B, SUM[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing FPU with the carry select adder*/
if (SUM[7] == 32'b11000100001111001010110011001100)		/*which is equivalent to -754.699951171875*/
begin
	$display("FPU_Carry_Select_Adder_TestCase#8:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("FPU_Carry_Select_Adder_TestCase#8:failed with input %b and %b and Output %b", A, B, SUM[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #9 Addition of 0 and INT_MAX");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #9 Addition of 0 and INT_MIN
************************************************************/
A = 32'b01001111000000000000000000000000; /*which is equivalent to 2147483647*/
B = 32'b00000000000000000000000000000000; /*which is equivalent to 0*/
#delay;

/*testing FPU with the Verilog (‘+’) version of adders*/
if (SUM[0] == 32'b01001111000000000000000000000000)		/*which is equivalent to 2147483647*/
begin
	$display("FPU_Verilog_Adders_TestCase#9:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Adders_TestCase#9:failed with input %b and %b and Output %b", A, B, SUM[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing FPU with the ripple carry adder*/
if (SUM[1] == 32'b01001111000000000000000000000000)		/*which is equivalent to 2147483647*/
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#9:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#9:failed with input %b and %b and Output %b", A, B, SUM[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing FPU with the carry save adder*/
if (SUM[2] == 32'b01001111000000000000000000000000)		/*which is equivalent to 2147483647*/
begin
	$display("FPU_Carry_Save_Adder_TestCase#9:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Carry_Save_Adder_TestCase#9:failed with input %b and %b and Output %b", A, B, SUM[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing FPU with the carry look-ahead adder*/
if (SUM[3] == 32'b01001111000000000000000000000000)		/*which is equivalent to 2147483647*/
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#9:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#9:failed with input %b and %b and Output %b", A, B, SUM[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing FPU with the carry increment adder*/
if (SUM[4] == 32'b01001111000000000000000000000000)		/*which is equivalent to 2147483647*/
begin
	$display("FPU_Carry_Increment_Adder_TestCase#9:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_Carry_Increment_Adder_TestCase#9:failed with input %b and %b and Output %b", A, B, SUM[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end

/*testing FPU with the carry skip adder*/
if (SUM[5] == 32'b01001111000000000000000000000000)		/*which is equivalent to 2147483647*/
begin
	$display("FPU_Carry_Skip_Adder_TestCase#9:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("FPU_Carry_Skip_Adder_TestCase#9:failed with input %b and %b and Output %b", A, B, SUM[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing FPU with the carry bypass adder*/
if (SUM[6] == 32'b01001111000000000000000000000000)		/*which is equivalent to 2147483647*/
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#9:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#9:failed with input %b and %b and Output %b", A, B, SUM[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end
	
/*testing FPU with the carry bypass adder*/
if (SUM[7] == 32'b01001111000000000000000000000000)		/*which is equivalent to 2147483647*/
begin
	$display("FPU_Carry_Select_Adder_TestCase#9:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("FPU_Carry_Select_Adder_TestCase#9:failed with input %b and %b and Output %b", A, B, SUM[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
$display("test case #10 Addition of number and its negative");
$display("-----------------------------------------------------------------------------------------------------------------------------------------------");
/************************************************************
test case #10 Addition of number and its negative
************************************************************/
A = 32'b01000100011111111110000000000000; /*which is equivalent to 1023.5*/
B = 32'b11000100011111111110000000000000; /*which is equivalent to -1023.5*/
#delay;

/*testing FPU with the Verilog (‘+’) version of adders*/
if (SUM[0] == 32'b00000000000000000000000000000000)		/*which is equivalent to 0*/
begin
	$display("FPU_Verilog_Adders_TestCase#10:success");
	NumOfSuccess[0] = NumOfSuccess[0] + 1;
end
else
begin
	$display("FPU_Verilog_Adders_TestCase#10:failed with input %b and %b and Output %b", A, B, SUM[0]);
	NumOfFailure[0] = 	NumOfFailure[0] + 1; 
end

/*testing FPU with the ripple carry adder*/
if (SUM[1] == 32'b00000000000000000000000000000000)		/*which is equivalent to 0*/
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#10:success");
	NumOfSuccess[1] = NumOfSuccess[1] + 1;
end
else
begin
	$display("FPU_Ripple_Carry_Adder_TestCase#10:failed with input %b and %b and Output %b", A, B, SUM[1]);
	NumOfFailure[1] = 	NumOfFailure[1] + 1; 
end

/*testing FPU with the carry save adder*/
if (SUM[2] == 32'b00000000000000000000000000000000)		/*which is equivalent to 0*/
begin
	$display("FPU_Carry_Save_Adder_TestCase#10:success");
	NumOfSuccess[2] = NumOfSuccess[2] + 1;
end
else
begin
	$display("FPU_Carry_Save_Adder_TestCase#10:failed with input %b and %b and Output %b", A, B, SUM[2]);
	NumOfFailure[2] = 	NumOfFailure[2] + 1; 
end

/*testing FPU with the carry look-ahead adder*/
if (SUM[3] == 32'b00000000000000000000000000000000)		/*which is equivalent to 0*/
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#10:success");
	NumOfSuccess[3] = NumOfSuccess[3] + 1;
end
else
begin
	$display("FPU_Carry_Look_Ahead_Adder_TestCase#10:failed with input %b and %b and Output %b", A, B, SUM[3]);
	NumOfFailure[3] = 	NumOfFailure[3] + 1; 
end

/*testing FPU with the carry increment adder*/
if (SUM[4] == 32'b00000000000000000000000000000000)		/*which is equivalent to 0*/
begin
	$display("FPU_Carry_Increment_Adder_TestCase#10:success");
	NumOfSuccess[4] = NumOfSuccess[4] + 1;
end
else
begin
	$display("FPU_Carry_Increment_Adder_TestCase#10:failed with input %b and %b and Output %b", A, B, SUM[4]);
	NumOfFailure[4] = 	NumOfFailure[4] + 1; 
end	

/*testing FPU with the carry skip adder*/
if (SUM[5] == 32'b00000000000000000000000000000000)		/*which is equivalent to 0*/
begin
	$display("FPU_Carry_Skip_Adder_TestCase#10:success");
	NumOfSuccess[5] = NumOfSuccess[5] + 1;
end
else
begin
	$display("FPU_Carry_Skip_Adder_TestCase#10:failed with input %b and %b and Output %b", A, B, SUM[5]);
	NumOfFailure[5] = 	NumOfFailure[5] + 1; 
end

/*testing FPU with the carry bypass adder*/
if (SUM[6] == 32'b00000000000000000000000000000000)		/*which is equivalent to 0*/
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#10:success");
	NumOfSuccess[6] = NumOfSuccess[6] + 1;
end
else
begin
	$display("FPU_Carry_Bypass_Adder_TestCase#10:failed with input %b and %b and Output %b", A, B, SUM[6]);
	NumOfFailure[6] = 	NumOfFailure[6] + 1; 
end

/*testing FPU with the carry select adder*/
if (SUM[7] == 32'b00000000000000000000000000000000)		/*which is equivalent to 0*/
begin
	$display("FPU_Carry_Select_Adder_TestCase#10:success");
	NumOfSuccess[7] = NumOfSuccess[7] + 1;
end
else
begin
	$display("FPU_Carry_Select_Adder_TestCase#10:failed with input %b and %b and Output %b", A, B, SUM[7]);
	NumOfFailure[7] = 	NumOfFailure[7] + 1; 
end

$display("===============================================================================================================================================");
$display("RESULTS");
$display("===============================================================================================================================================");
/************************************************************
print stats
************************************************************/

$display ("FPU with Verilog (+) version of adders -> Number of success: %d , Number of Failure: %d", NumOfSuccess[0], NumOfFailure[0]);
$display ("FPU with ripple carry adder -> Number of success: %d , Number of Failure: %d", NumOfSuccess[1], NumOfFailure[1]);
$display ("FPU with carry save adder -> Number of success: %d , Number of Failure: %d", NumOfSuccess[2], NumOfFailure[2]);
$display ("FPU with Carry Look-Ahead Adder -> Number of success: %d , Number of Failure: %d", NumOfSuccess[3], NumOfFailure[3]);
$display ("FPU with carry increment adder -> Number of success: %d , Number of Failure: %d", NumOfSuccess[4], NumOfFailure[4]);
$display ("FPU with Carry Skip Adder -> Number of success: %d , Number of Failure: %d", NumOfSuccess[5], NumOfFailure[5]);
$display ("FPU with Carry Bypass Adder -> Number of success: %d , Number of Failure: %d", NumOfSuccess[6], NumOfFailure[6]);
$display ("FPU with Carry Select Adder -> Number of success: %d , Number of Failure: %d", NumOfSuccess[7], NumOfFailure[7]);

end

endmodule