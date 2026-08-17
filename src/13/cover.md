[back to home](../index.html)

# PSYCHORAPTURE, pt. 1 Cover Challenge

This challenge can be found on the cover of issue 13. Spot the symbols on the left edge.

## The Alphabet

The symbols match the familiar pattern `xxxxxxxx.xx/xxxxxxx`.
From all of the previous cover challenges, we can be (almost) assured that the initial part of this string decodes to `tficomic.io/`.

The symbols themselves look sort of like tetris shapes: a five-by-two grid, with all bottom five boxes filled and zero to three top boxes filled.

<svg viewBox="0 0 230 40" width="230" height="40" fill="crimson" role="img" aria-label="Two example symbols: a five-by-two grid of boxes, with the bottom row full and some of the top row filled.">
<rect x="40" y="0" width="20" height="20"/>
<rect x="80" y="0" width="20" height="20"/>
<rect x="0" y="20" width="20" height="20"/>
<rect x="20" y="20" width="20" height="20"/>
<rect x="40" y="20" width="20" height="20"/>
<rect x="60" y="20" width="20" height="20"/>
<rect x="80" y="20" width="20" height="20"/>
<rect x="150" y="0" width="20" height="20"/>
<rect x="190" y="0" width="20" height="20"/>
<rect x="210" y="0" width="20" height="20"/>
<rect x="130" y="20" width="20" height="20"/>
<rect x="150" y="20" width="20" height="20"/>
<rect x="170" y="20" width="20" height="20"/>
<rect x="190" y="20" width="20" height="20"/>
<rect x="210" y="20" width="20" height="20"/>
</svg>

The top row is five "boxes" that are either there or not there.
My first instict was to convert these to binary format and see if they match any kind of known representation of letters.
Doing this for the "known plaintext" part of the code, we get:

<table>
<tr><th>Binary</th><th>Decimal</th><th>Letter</th></tr>
<tr><td><code>10010</code></td><td>18</td><td>R</td></tr>
<tr><td><code>00101</code></td><td>5</td><td>E</td></tr>
<tr><td><code>01000</code></td><td>8</td><td>H</td></tr>
<tr><td><code>00010</code></td><td>2</td><td>B</td></tr>
<tr><td><code>01101</code></td><td>13</td><td>M</td></tr>
<tr><td><code>01011</code></td><td>11</td><td>K</td></tr>
<tr><td><code>01000</code></td><td>8</td><td>H</td></tr>
<tr><td><code>00010</code></td><td>2</td><td>B</td></tr>
<tr><td><code>.</code></td><td>-</td><td>.</td></tr>
<tr><td><code>01000</code></td><td>8</td><td>H</td></tr>
<tr><td><code>01101</code></td><td>13</td><td>M</td></tr>
<tr><td><code>/</code></td><td>-</td><td>/</td></tr>
</table>

That's not the letters we expected, but interestingly they are all super close in the alphabet to the ones we wanted.
Shifting every letter by one (A becomes B, B becomes C etc) we get `SFICNLIC.IN`.
This is not the URL we were expecting (but it was available so I grabbed it!).

Some letters in `SFICNLIC.IN` are correct, and the others are one more shift away.
`C`, `F` and `I` are valid but the others are not.
Shifting all of the other letters by one (J becomes K, K becomes L etc) we now get `TFICOMIC.IO`.

So we have the following procedure:
- transform the squares to boolean
- transform the boolean to decimal
- transform the decimal to letters of the alphabet
- shift A..H to B..I (by one)
- shift I..X to K..Z (by two)

Applying this procedure to the rest of the code gives us a word that is *almost* correct.
There is a caveat to the procedure we could not have guessed before, and which you must now account for (hint: one letter only is wrong, and it is off by one in a direction).

You should now be able to reconstruct the URL and get the flag!