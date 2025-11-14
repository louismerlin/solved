[back to home](./index.html)

# MARTINA Cover Challenge

This challenge can be found on the cover of issue 2. Spot the long string of characters in the bottom-left under Martina's knee.

## The Address?

This long string of hexadecimal characters punctuated by `:` colons looks like an IPv6 address.

However, trying to get the content at this address does not return anything.

```bash
$ curl -6 http://[the_address_on_the_cover]
curl: (7) Failed to connect to the_address_on_the_cover port 80 after 0 ms: Could not connect to server
```

## The Code

This is actually just hex-encoded data. You can decode it with [CyberChef](https://gchq.github.io/CyberChef/#recipe=From_Hex('Auto')) for example.

It decodes to a URL, which contains the flag.
