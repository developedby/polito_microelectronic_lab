Question 4:
This is the description of an adder where one of the inputs is given serially (A) and the other paralelly (B).
The output is also sent out serially.

The input must be given one at a time, first A and then B separately in another cycle.
Alternatively, the input can be sent also first B and then A.
We indicate that an input will be sent by strobing either STARTA for A or LOADB for B.
After receiving the first number, the system waits for the signal of the second one to be strobed.
At any moment while the inputs have not been completely given or while the system is waiting, we're allowed to "reset" the current load operation, going back to the sending of either A or B by strobing the relevant signal.
As soon as the two inputs have been sent and this "input reset" is not being signaled, it calculates the sum of the two numbers and starts to output it to C, one bit at a time.

After sending the result out completely, the system results to idle, waiting for a new sequence of inputs, be it A first or B first.

There also appears to be a bug in this design, inside the state machine: When inputing A second, the signal to indicate that we want to reset A and start to send it again is not STARTA, but rather LOADB.