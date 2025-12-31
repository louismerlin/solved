[back to home](../index.html)

# ELI Cover Challenge

This challenge can be found on the cover of issue 3. Spot the numbers under the orange car, in the bottom of the image.

```
111911194114111911
100910096017001901
625 195  51 210 15
```

## The Numbers

First thing I tried when seeing these digits was to open-up [CyberChef](https://gchq.github.io/CyberChef/), and try to decode the message with the "From Decimal" operation.

It didn't work.

At second glance, notice how the first row is mostly 1's, and the third row has spaces in between.
Taking a closer look, we can see that the numbers might be arranged vertically, column by column.
The first value would be 116, then 102, etc.

Decoding these numbers as decimal ASCII values works, and gives us our URL! Following the URL gives us our Cover Challenge flag.