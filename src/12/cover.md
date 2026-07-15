[back to home](../index.html)

# GLASSHEADS, pt. 5 Cover Challenge

This challenge can be found on the cover of issue 12. Spot the characters on the left edge.

## The Square

We are given the word `SQUARE` followed by a list of number pairs.

The word `SQUARE` and the pairs of digits point at a [Polybius square](https://en.wikipedia.org/wiki/Polybius_square): each pair is a (row, column) coordinate into a 5×5 grid of letters.

Because a 5×5 grid only holds 25 cells for 26 letters, one letter has to be dropped (or merged).
Working out which one is the puzzle: filling the grid with the letters we already know from `tficomic.io`, the coordinates only line up once `K` is the missing letter:

```
A B C D E
F G H I J
L M N O P
Q R S T U
V W X Y Z
```

Decoding the coordinates against that grid, we get our URL.
