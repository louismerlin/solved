[back to home](../index.html)

# WHEELER, pt. 2 Crack the \*\*\*\*\*\*

This challenge can be found on the inside of the cover of issue 7.

We are given the code: `BYDBCQAAAAFnk8TL/uNcnt4A`

We are told that the word "got compressed and lost its air".

## The Decompression

The string looks to me like a base64-encoded string.

Decoding it with a base64 decoder works, but gives us raw binary data as output.

Using the hint, the next thing I try is decompressing the data.
Using [CyberChef](https://gchq.github.io/CyberChef/) I try a whole bunch of options but nothing works.
The data does not have the proper headings that decompression algorithms expect.

The hint heavily points to [zlib](https://en.wikipedia.org/wiki/Zlib) which implements the `DEFLATE` algorithm ("lost its air").
Hence I try decompressing using zlib and bypassing the header check (this is what the `-15` is for).

```python
import base64, zlib
decoded = base64.b64decode("BYDBCQAAAAFnk8TL/uNcnt4A")
decompressed = zlib.decompress(decoded, -15)
print(decompressed.decode())
```

We've got our word, nice!