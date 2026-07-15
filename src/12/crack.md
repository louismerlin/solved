[back to home](../index.html)

# GLASSHEADS, pt. 5 Crack the \*\*\*\*\*\*

This challenge can be found on the inside of the cover of issue 12.

The challenge mentions  "chip codes". This is a very valuable hint: they are used in [CDMA](https://en.wikipedia.org/wiki/Code-division_multiple_access) (Code Division Multiple Access), where two transmitters share the same channel at the same time.

Each transmitter has a chip code, the code is XORed with the bit it wants to send, and the two signals are added together on the wire.
Two children (A and B) are transmitting simultaneously, and we receive the summed values.

Reading the summed pairs, we can recover each child's bit:

```
-2  0 => 1 1
 2  0 => 0 0
 0 -2 => 1 0
 0  2 => 0 1
```

Decoding all the pairs into the two bit streams, and reading each 8-bit group as an ASCII character, we get our six-letter word, three characters per stream.
