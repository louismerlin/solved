[back to home](./index.html)

# ELI Crack the \*\*\*\*\*\*

This challenge can be found on the inside of the cover of issue 3.

## The Setup

We're given four "expressions":

```
^[ABC]?(N)+.*L$
^N[A-E]{1}[A-Z]*?$
^.[E-U]{2}[R-T]{1}..$
^[A-Z]{2}[U-Z][RAM]A.$
```

## The Match

These are [regular expressions](https://en.wikipedia.org/wiki/Regular_expression), or "regex".
They are usually used to match patterns on text.
The word we have to find is the only 6-letter word that matches all expressions.

Here are all of symbols we need to know:

```
^     marks the beginning of a word
$     marks the end of a word
A     means there is a A here
[XYZ] means that either X, Y or Z is in this spot
[W-Z] means that one letter from W to Z is in this spot
{5}   means there are 5 occurences of the previous item
.     means there can be any one character in this spot 
*     means the previous item is repeated 0 or more times
+     means the previous item is repeated one or more times
?     means the previous item is repeated 0 or 1 time
( )   groups things together
```

With this, we can guess:

```
^[ABC]?(N)+.*L$        => One or more N in the first or second spot, L at the last spot
^N[A-E]{1}[A-Z]*?$     => N in the first spot, then A to E in the second
^.[E-U]{2}[R-T]{1}..$  => E to U in the second and third spot, R to T in the fourth
^[A-Z]{2}[U-Z][RAM]A.$ => U to Z in the third spot, R, A or M in the fourth, A in the fifth
```

Already we can lock-in `N***AL`

The third spot is a letter from E to U and from U to Z, so it must be U.

`N*U*AL`

The fourth spot is a letter from R to T, but also has to be R, A or M, so it has to be R.

`N*URAL`

The second spot is a letter from A to E. Trying-out the five possibilities, only one is an english word. We've got our flag!