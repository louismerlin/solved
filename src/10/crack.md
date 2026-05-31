[back to home](../index.html)

# GLASSHEADS, pt. 3 Crack the \*\*\*\*\*\*

This challenge can be found on the inside of the cover of issue 10.

We see a 20-by-6 array of 0s and 1s, as well as a 15-segment display and the code `LTP-4323JD`.

After some online snooping, we find [this datasheet](https://optoelectronics.liteon.com/upload/download/DS30-2001-094/P4323JD.pdf) for the corresponding display.
It contains a "PIN Connection" table which links 20 bits to the different segments (anodes) of the display.
We can safely guess that each row of our binary table will display one character from the six-letter word.

For the first letter, we must "light-up" anodes F, G, E, B, A and H, which draws a C.
Repeating this for each row gives us the full word.