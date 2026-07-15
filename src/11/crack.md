[back to home](../index.html)

# GLASSHEADS, pt. 4 Crack the \*\*\*\*\*\*

This challenge can be found on the inside of the cover of issue 11.

We are pointed at a DNS server: `tficomic.io` on port `7300`, and a hostname `lulzworld.local`.
Let's query it with [`dig`](https://en.wikipedia.org/wiki/Dig_(command)).

```
❯ dig @tficomic.io -p 7300 lulzworld.local

;; ANSWER SECTION:
lulzworld.local.	3600	IN	TXT	"Letter 2: X"
```

Interesting: the answer gives us one letter of a six-letter word.

> Note: I replaced every letter with an X to avoid spoilers :)

The default query type (`A`) gives us letter 2, and the trick is to ask for each letter using a *different* DNS record type.
`man dig` lists the possible types.

```
❯ dig @tficomic.io -p 7300 lulzworld.local ANY
lulzworld.local.	3600	IN	TXT	"Letter 1: X"

❯ dig @tficomic.io -p 7300 lulzworld.local MX
lulzworld.local.	3600	IN	TXT	"Letter 3: X"

❯ dig @tficomic.io -p 7300 lulzworld.local NS
lulzworld.local.	3600	IN	TXT	"Letter 4: X"

❯ dig @tficomic.io -p 7300 lulzworld.local AAAA
lulzworld.local.	3600	IN	TXT	"Letter 6: X"
```

That gives us `XXXX_X`, missing letter 5.
Letter 5 turns out to be behind the `CNAME` record type (an alias), where the answer comes back under `alias.lulzworld.local`:

```
❯ dig @tficomic.io -p 7300 lulzworld.local CNAME
alias.lulzworld.local.	3600	IN	TXT	"Letter 5: X"
```

Putting the six letters in order, we get the word.
