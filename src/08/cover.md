[back to home](../index.html)

# GLASSHEADS, pt. 1 Cover Challenge

This challenge can be found on the cover of issue 8. Spot the vertical text on the right of the page.

## The Base

This looks like [Base64](https://en.wikipedia.org/wiki/Base64) encoding, though putting the text through a base64 decoder gives us undecipherable data.

Looking through the "From BaseXX" decoders in [CyberChef](https://gchq.github.io/CyberChef) we can see there are a lot of flavors of this scheme: Base32, Base45, Base58...

Trying a few of them out, we get a valid URL with the "From Base32" decoder.

Giving the text to the "Magic" recipe from CyberChef also gives us this result.

The URL points to a page containing a flag.