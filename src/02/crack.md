[back to home](./index.html)

# MARTINA Crack the \*\*\*\*\*\*

This challenge can be found on the inside of the cover of issue 2.

## The Setup

We are given a 6-letter cipher to crack, and a phrase made up of five 5-letter words.

## The Square

The page given in the cover gives us a hint: it mentions the [Polybius square](https://en.wikipedia.org/wiki/Polybius_square).

This page leads us to discover the [Bifid cipher](https://en.wikipedia.org/wiki/Bifid_cipher).

Let's try the decryption method for this cipher:

```
| \ | 1 | 2 | 3 | 4 | 5 |
| - | - | - | - | - | - |
| 1 | D | W | A | R | F |
| 2 | G | L | Y | P | H |
| 3 | J | O | C | K | S |
| 4 | M | U | N | T | Z |
| 5 | V | I | B | E | X |
```

The ciphertext is ZKSWIE, whose letters are represented by the coordinates:

```
45 34 35 12 52 54
```

We find the midpoint and move both halves on top of each other:

```
45 34 35
12 52 54
```

We read out the columns as coordinates:

```
41 52 35 42 35 54
```

Which gives us our flag when translated with the table!