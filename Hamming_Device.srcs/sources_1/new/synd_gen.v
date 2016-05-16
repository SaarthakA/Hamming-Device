// Compute the 3-bit syndrome
module synd_gen (
input  [7:1] cw,// b3b2b1p2b0p1p0
output [2:0] synd
);
assign synd[2] = cw[7]^cw[6]^cw[5]^cw[4];
assign synd[1] = cw[7]^cw[6]^cw[3]^cw[2];
assign synd[0] = cw[7]^cw[5]^cw[3]^cw[1];
endmodule