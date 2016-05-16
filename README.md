# Hamming-Device
Description in Verilog and Test-Bench of Hamming Device

A distance-3 Hamming code word consists of 4 information bits B = B3, B2, B1, B0 
and 3 parity bits P = P2, P1, P0 .

The parity bits are determined by the following operations (^ = exclusive or):

P2 = B3 ^ B2 ^ B1

P1 = B3 ^ B2 ^ B0

P0 = B3 ^ B1 ^ B0

With 4 information bits, there are 16 possible valid code words. All others are considered invalid code words.
The 7-bit code words are presented in this order: 
  
B3 B2 B1 P2 B0 P1 P0 .
  
The receiver of such Hamming code words will re-compute the three parity bits and compare them with the ones that are received. 
If one of the seven bits is corrupted, the erroneous bit will be detected as the one given by the syndrome 
(which is the bit-wise XOR of the three re-computed and the original parity bits).
**In the Simulation the noError will go low if corrupted bit is found**
