[back to home](../index.html)

# WHEELER, pt. 1 Cover Challenge

This challenge can be found on the cover of issue 6. Spot the letters in the bottom right corner.

## The Mirror

The letters are printed backwards, and they read:

```
GURXLNRX.RL/TIVBDLOU
```

We can easily spot the usual pattern of `TFICOMIC.IO/SOMETHING`.
Now we need to reverse-engineer the code to get the last part.

Using [CyberChef](https://gchq.github.io/CyberChef/), I try different character rotations ([Caesar Cipher](https://en.wikipedia.org/wiki/Caesar_cipher)) without getting anywhere.

That's when I realize, the characters being printed backwards was a hint: R definitely corresponds to I (because we know the base url is `tficomic.io`), I is the 9th letter of the alphabet and R is the 9th letter starting from the end. 
Applying that logic to every letter, we get our URL, which leads us to the flag.
