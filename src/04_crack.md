[back to home](./index.html)

# SALLY Crack the \*\*\*\*\*\*

This challenge can be found on the inside of the cover of issue 4.

## The Hash

We are given a hash and a link to a helper page (and a bonus flag).

This hash is a 32-character hexadecimal value that was derived from the password, using a pre-determined deterministic algorithm.
Most hashes cannot be trivially reversed, but for 6-letter words dictionaries exist that can find the corresponding source word for your hash.
One such tool is [md5hashing.net](https://md5hashing.net/) which I used for this challenge.

I tried the most popular hashes out there, which are `sha256` and `md5`. The second one gave me the result I was looking for.

Taking a look at the helper page, we are given the info that this is indeed an `md5` hash, and they point to other resources that can brute-force simple word hashes like this one.