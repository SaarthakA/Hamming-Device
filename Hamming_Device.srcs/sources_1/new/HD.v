`timescale 1ns / 1ps
// Lab 1, Question 1.2 
// Engineer(s): Saarthak Ahlawat
// Date:  4/24/2016
// Description: Hamming Device
//
module HD(
input  [7:1] rCW,    // received codeword
output [7:1] cCW,
output       noError
);
wire [2:0] synd;
wire [7:1] bitDec;
// instantiate synd_gen
synd_gen isynd_gen(
    .cw(rCW),
    .synd(synd)
);
// instantiate decode3x8
decode3x8 idecode3x8(
    .synd(synd),
    .noError(noError),
    .bitDec(bitDec)
);
// add any extra logic such as XOR logic
assign cCW[1] = rCW[1] ^ bitDec[1]; 
assign cCW[2] = rCW[2] ^ bitDec[2];
assign cCW[3] = rCW[3] ^ bitDec[3];
assign cCW[4] = rCW[4] ^ bitDec[4];
assign cCW[5] = rCW[5] ^ bitDec[5];
assign cCW[6] = rCW[6] ^ bitDec[6];
assign cCW[7] = rCW[7] ^ bitDec[7];
endmodule
