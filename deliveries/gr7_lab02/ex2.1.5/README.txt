Question 1 :
The top 10 worst paths all have the same reported delay (0.58) and take similar paths:
They come from input A[3], are transformed into a P signal, go through the rightmost PG block, then go through 4 G blocks, and exit the carry generator through pins 20, 24 or 28, changing only the last G block.
Then, they go through the Carry in/Select port of the last Carry Select Block and exit the circuit through one of the Sum outputs (31 to 22).
Since this circuit has a lot of paths that are basically the same it is expected that the top 10 worse delays all come from very similar paths.


Question 2 :
The compiler managed to fulfill the imposed timing restriction, reducing the delay, although the area increased from 556 to 581.
The worst paths are similar but slightly different, entering through pin A[5] and going through 2 PG blocks and 3 Gs, instead of 1 PG and 4 Gs.
Looking at the schematics, the PG/G blocks are not implemented all the same anymore, with some using AOIs and others using NORs.
Some of the more complex standard cells like AOI and XOR were changed with NANDs, NORs and INVs.


Question 3:
The "ADD_t.scr" script produced the exact same result as before.


Question 4:
As explained before in question 2, after constraining the max delay, the compiler changed some smaller but slower cells like AOIs into combinations of NANDs, NORs and INVs, which are very fast but take up slightly more space. The overall structure of the components is still the same.
