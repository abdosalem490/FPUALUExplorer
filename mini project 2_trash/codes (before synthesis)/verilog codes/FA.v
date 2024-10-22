module FA (A,B,CIN,SUM,COUT);

/*inputs*/
input A,B;
input CIN;

/*outputs*/
output SUM;
output COUT;

/*temporary variables*/
wire temp;

/*refer to : https://www.geeksforgeeks.org/full-adder-in-digital-logic/ */
assign temp = A ^ B;
assign SUM = temp ^ CIN;
assign COUT = (A & B) | (temp & CIN);

endmodule 
