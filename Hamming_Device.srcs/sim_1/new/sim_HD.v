`timescale 1ns / 1ps
// Lab 1, Question 1.2 
// Engineer(s): Saarthak Ahlawat
// Date:  4/24/2016
// Description: Hamming Device testbench
//
module sim_HD();

reg [7:1] rCW;
wire [7:1] cCW;
wire noError;

HD uut(
    .rCW(rCW),
    .cCW(cCW),
    .noError(noError)
);

initial begin 
    //16 valid codewords
#0 rCW = 7'b000_0000;
#10 rCW = 7'b000_0111;
#10 rCW = 7'b001_1001;
#10 rCW = 7'b001_1110;
#10 rCW = 7'b010_1010;
#10 rCW = 7'b010_1101;
#10 rCW = 7'b011_0011;
#10 rCW = 7'b011_0100;
#10 rCW = 7'b100_1011;
#10 rCW = 7'b100_1100;
#10 rCW = 7'b101_0010;
#10 rCW = 7'b101_0101;
#10 rCW = 7'b110_0001;
#10 rCW = 7'b110_0110;
#10 rCW = 7'b111_1000;
#10 rCW = 7'b011_0100;
//7 invalid codewords
#10 rCW = 7'b000_0001;
#10 rCW = 7'b000_0101;
#10 rCW = 7'b001_1101;
#10 rCW = 7'b001_0110;
#10 rCW = 7'b011_1010;
#10 rCW = 7'b000_1101;
#10 rCW = 7'b111_0011;
#10 $finish;
end
endmodule
