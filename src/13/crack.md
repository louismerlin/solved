[back to home](../index.html)

# PSYCHORAPTURE, pt. 1 Crack the \*\*\*\*\*\*

This challenge can be found on the inside of the cover of issue 13.

We see six components covered in coloured bands, five bands each, and the text mentions "HIGHER TECH".

## The Bands

Components with coloured bands are resistors, and the bands are the [electronic colour code](https://en.wikipedia.org/wiki/Electronic_color_code).
Wikipedia even has a [list of mnemonics](https://en.wikipedia.org/wiki/List_of_electronic_color_code_mnemonics) to remember the digit each colour stands for:

```
black 0   brown 1   red 2     orange 3   yellow 4
green 5   blue 6    violet 7  grey 8     white 9
```

Reading the first two resistors off the page gives us:

```
8 3 0 ? 5
0 6 9 0 5
```

The `?` is a gold band, which is not part of the digit scale above.
Reading the wikipedia page for the electronic color code, you can see that only the first three bands are the digits, the fourth is a multiplier and the fifth a tolerance.

Gold as a multiplier means ×0.1, and black means ×1.

This means the first resistor is not `830`, it is `830 × 0.1 = 83`. And 83 is the charcode for `S`.

<table>
<tr><th>Digits</th><th>Multiplier</th><th>Value</th></tr>
<tr><td>830</td><td>gold, ×0.1</td><td>83</td></tr>
<tr><td>069</td><td>black, ×1</td><td>69</td></tr>
<tr><td>...</td><td>...</td><td>...</td></tr>
</table>

It seems the tolerance band is a red herring, it plays no part in the answer.
Converting each of the six values to its ASCII character gives us the word.
