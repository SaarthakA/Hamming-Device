// Decode the syndrome
module decode3x8 (
input  [2:0] synd,
output [7:1] bitDec,
output       noError
);
// internal signal
reg [7:0] dec;
assign bitDec = dec[7:1];
assign noError = dec[0];
always @(*)
begin
  case (synd)
   3'b000 : dec = 8'b0000_0001;
   3'b001 : dec = 8'b0000_0010;
   3'b010 : dec = 8'b0000_0100;
   3'b011 : dec = 8'b0000_1000;
   3'b100 : dec = 8'b0001_0000;
   3'b101 : dec = 8'b0010_0000;
   3'b110 : dec = 8'b0100_0000;
   3'b111 : dec = 8'b1000_0000;
  endcase
end
endmodule