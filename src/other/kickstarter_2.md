[back to home](../index.html)

# Kickstarter 2 Challenges

You'll find these challenges dispersed in the [Kickstarter page](https://www.kickstarter.com/projects/rekcah/support-comic-shops-with-the-future-is-xxxxxx-origins-hc) for the second crowdfunding campaign of the comic book series.

All four challenges are dispersed in the "Campaign" page.

## Challenge 1

For the first challenge we get the word "ROT13" and what looks like a gibberish url.
[ROT13](https://en.wikipedia.org/wiki/ROT13) is a version of the Caesar cipher with 13 rotations.

[CyberChef](https://gchq.github.io/CyberChef/) has a `ROT13` recipe we can use to decode the URL.

Going to that URL will give us a bonus flag. One down, three to go!

## Challenge 2

Next, we are given the word "HEX" and a long hexadecimal string.

[CyberChef](https://gchq.github.io/CyberChef/) has a `From Hex` recipe, we use that to get to the second stage of the challenge.

The decoded string contains `Z->A` and another gibberish url, similar to the one in challenge 1.

`Z->A` must be the key to decrypting the URL. Let's try to figure out what it means.

We are only given `Z->A` so let's assume at every step that this is as simple as possible. We can add complications later if it does not work.

If `Z` becomes `A`, then `A` becomes `Z`.

If `Z` becomes `A` and `A` becomes `Z`, then `Y` becomes `B` and `B` becomes `Y`.

... repeat until `N` becomes `M` ...

Ok this looks like an interesting algorithm, let's try it out!

Yup, that's the solution, cool, we get a second bonus flag.

## Challenge 3

The third challenge has the word `BASE?` and a bunch of letters and numbers next to it.

It seems quite straightforward, we need to figure out the [base](https://simple.wikipedia.org/wiki/Base_(mathematics)) of the string and decode it.

Using our good friend [CyberChef](https://gchq.github.io/CyberChef/), we try different common `From BaseXX` recipes. The one for `Base32` gives us a url!

### The Authentication

Yay, the url has a second challenge in addition to the bonus flag.

We are given a python function, and asked to figure out the correct password to get the flag.

The python function runs the `check` function on the user-provided input.
This `check` function does some transformation on the input and compares it with a secret that we have access to.

The `check` function will return `True` if the user-provided input is the flag. This means we have to reverse-engineer the following transformation:

```python
entered = [ord(c) ^ 0x13 for c in pwd[::2]] + [ord(c) ^ 0x37 for c in pwd[1::2]]

# ok we can split this into two separate arrays:
entered_1 = [ord(c) ^ 0x13 for c in pwd[::2]]
entered_2 = [ord(c) ^ 0x37 for c in pwd[1::2]]
entered = entered_1 + entered_2 # <- concatenation

# now let's try to write it in pseudo-code:
entered_1 = (char_to_int(element) XOR 19) for each second element of the input (starting with index 0)
entered_2 = (char_to_int(element) XOR 55) for each second element of the input (starting with index 1)
entered = concatenate entered_1 and entered_2

# now let's reverse it:
key_even = element XOR 19 for each element in the first half of the secret
key_odd = element XOR 55 for each element in the second half of the secret
key_int = intertwine key_even and key_odd (key_even[0], then key_odd[0], then key_even[1] etc)
key = apply int_to_char to every element of key_int

# in real python this gives us:
key_even = [e ^ 19 for e in secret[:(len(secret)+1)//2]]
key_odd = [e ^ 55 for e in secret[(len(secret)+1)//2:]]
pwd = []
for i in range(n):
    if i % 2 == 0:
        pwd.append(chr(key_even[i // 2]))
    else:
        pwd.append(chr(key_odd[i // 2]))
print(''.join(pwd))
```

This gives us the flag.

## Challenge 4

We are given the word `XOR` and a long hexadecimal string.

As we are not given the key to decipher the XOR-encrypted string, we have to be clever. The [XOR cipher](https://en.wikipedia.org/wiki/XOR_cipher) is reversible, meaning that `ciphertext = xor(plaintext, key)` and `plaintext = xor(ciphertext, key)` but also `key = xor(ciphertext, plaintext)`.
We know the ciphertext, so if we could figure out parts of the plaintext we could maybe figure out parts of the key.

Almost all of the other challenges for this CTF have the same base URL, `tficomic.io`. We can be almost sure that the plaintext begins with these letters.

Using [CyberChef](https://gchq.github.io/CyberChef/), we use the `From Hex` and `XOR` recipes and put `tficomic.io/` in the `Key` box (make sure to select `UTF8` in the dropdown).
The output is not recognizable but it does look like the beginning is repeating every two characters!
We add the `To Hex` recipe and see that the first two bytes are repeating: `0eca` for as long as the plaintext is known.

We can deduce that the key is `0eca` and repeats for the entire word.

We now replace the `Key` field with `0eca` (make sure to select `Hex` in the dropdown) and disable the `To Hex` operation.

Here is our URL!

## The Network

There is the real challenge at the given URL, as well as a bonus flag.

We are given a `pcapng` file, which is a network capture file we can open with [Wireshark](https://www.wireshark.org).

The challenge page tells us this is the capture of someone downloading a ZIP file, and that the password for the ZIP is on the website from which the file was downloaded.

Opening-up the `pcapng` with Wireshark, let's first find that ZIP file. We scroll down to the bottom, and click on the last HTTP packet, which says `OK (application/zip)`.
We right-click, `Follow`, `HTTP Stream`. In that new page we `Show as` `Raw` and then `Save as...`. Now we've got our zip file.

Next step: find the password. Scrolling back up to the top, we find the line that says `200 OK (text/html)`. We click on it, and then in the bottom-right panel click on "Reassembled TCP". We can now scroll down through the HTML content, and find the password in the `<input>` field.

Unzipping the file with the password, we get an image of the flag. Success!
