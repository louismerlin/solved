[back to home](./index.html)

# OGN Crack the \*\*\*\*\*\*

This challenge can be found either on the inside of the cover of **some versions** of issue 1, or in the solution URL of the [cover challenge](./cover.html).

## The Setup

We have three images, with segment-display-style symbols in red, green and blue.

## Combination

A simple way to solve this challenge is to take pen and paper, and draw each segment that is shared between all three colors.

There are also technical ways to solve it, such as with [magick](https://en.wikipedia.org/wiki/ImageMagick):

```
magick G.png -alpha set -channel A -evaluate set 50% G_50.png
magick B.png -alpha set -channel A -evaluate set 50% B_50.png
magick R.png -alpha set -channel A -evaluate set 50% R_50.png
magick G_50.png B_50.png -composite R_50.png -composite combined.png
```

You'll see the six-letter word appear in a dark-red color in `combined.png`.

<fieldset class="hacker-note">
  <legend>Hacker Mindset</legend>
  <p>Sometimes pen and paper can be faster than figuring out which commands to invoke.</p>
</fieldset>