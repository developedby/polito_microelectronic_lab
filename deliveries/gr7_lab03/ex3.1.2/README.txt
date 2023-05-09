 
Question 1:
After adding the clock constraint, the compiler was able to relax on the timing optimization, since the slack of the unconstrained syntesis was now very large.
The compiler increased the max delay from 0.1 to 0.4, by exchanging some fast and large structure with slower but smaller ones.
The cell area reduced from 9378 to 8773.

The compiler now warns us that the clock signal has a very large fanout, something that it was not able to understand without the clock constraint. Also, the number of of buffers increased, which i would guess is to properly drive the clock to all the cells.


Question 2:
Because the clock constraint only affect register-to-register paths, blocks 1 (input to register) and 3 (register to output) are not affected by the clock constraint.
However, if we want to use this component inside of a larger design that also runs on this clock, these two blocks would also need to be constrained or we would not meet the required timing and we'd get wrong/unexpected behaviour.

