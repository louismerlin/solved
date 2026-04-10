[back to home](../index.html)

# GLASSHEADS, pt. 2 Cover Challenge

This challenge can be found on the cover of issue 9. Spot the characters in the bottom left corner.

## The URL

The characters have the rhythm of an https url:

```
xxxxx://xxxxxxxx.xx/xxxxxxx
```

The letters themselves look scrambled. Trying out a [Caesar cipher](https://en.wikipedia.org/wiki/Caesar_cipher) rotation, we do not get anything that makes sense.

We need to try something different. From previous cover challenges, we know that the first fifteen letters are most likely:

```
https://tficomic.io/
```

We can also notice that repeating characters are always represented using the same letter: `i` is `c`, `t` is `j`.

There is only one letter in the final part of the URL which we do not know, and it is `g`.
Replacing all other letters by their known substitute, it is not hard to guess the letter behind `g`.