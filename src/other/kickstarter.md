[back to home](../index.html)

# Kickstarter Challenges

You'll find these challenges dispersed in the [Kickstarter page](https://www.kickstarter.com/projects/rekcah/the-future-is-from-rekcah-comics) for the original crowdfunding campaign of the comic book series.

You'll find challenges 1, 2 and 4 in the "Campaign" page and challenge 3 in the "FAQ" page.

## Challenge 1

### Finding the challenge

This is a string of 1s and 0s, what does it mean? [Bits](https://en.wikipedia.org/wiki/Bit) are the basic representation of everything on modern computers.
You can use [CyberChef](https://gchq.github.io/CyberChef/)'s "From Binary" operation to decode the ciphertext.
This should give you a URL, which will give you a first bonus flag, and a link to the actual challenge page.

### Traveling to the future

As of writing this, in September 2025, the Google Chrome version is 140. This page asks us to access it using version 476.
Instead of waiting decades for this version to be released, let's trick the server into thinking we're using that client.

First, access your browser's [web developer tools](https://developer.mozilla.org/en-US/docs/Learn_web_development/Howto/Tools_and_setup/What_are_browser_developer_tools) and navigate to the "Network" tab. Reload the page to show all of the requests made by your browser to the server.

Find the main html request (it should be the first one on the list when ordered chronologically), left-click and select "Edit and Resend".
Now find the ["User-Agent"](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/User-Agent) field. Replace the value to "Chrome/476" and click "Send".

You should now see a new request in the list. Select it, and view the "Response" to get the flag.

As an alternative to all of this, you can open up your terminal and run the command:

```bash
curl -A "Chrome/476" https://challenge_url
```

## Challenge 2

### Finding the challenge

This looks like base64-encoded data! Using [CyberChef](https://gchq.github.io/CyberChef/)'s "From Base64" operation, we get:

```
ABABB AAABA BAABA AABAB . ABAAA ABBAB / 1 AAABA 653 AABAA 1
```

We recognize the pattern "mctf.io/something" from the previous challenges.

Trying to replace As by 0 and Bs by 1, and matching these binary sequences to ASCII characters does not seem to work.

Looking for another approach, you can try pasting these characters into [dcode's cipher identifier](https://www.dcode.fr/cipher-identifier), which will tell you that this is a [baconian cipher](https://www.dcode.fr/bacon-cipher).

With this information, replacing the baconian letters in the code, we get the correct URL to get to a bonus flag, and the actual challenge.

### Running around XOR

We are given three encrypted messages (ciphertexts) and are told they have been encrypted with the [XOR cipher](https://en.wikipedia.org/wiki/XOR_cipher), using the same key.

One of the ciphertexts decrypts to the flag, in the format `KEY{...}`.

According to the properties of the XOR cipher, we know that, given E1, E2 and E3 the three encrypted messages, K the encryption key and P1, P2 and P3 the three plaintext messages:

```
E1 ⊕ P1 = K
E2 ⊕ P2 = K
E3 ⊕ P3 = K

E1 ⊕ K = P1
E2 ⊕ K = P2
E3 ⊕ K = P3
```

We know E1, E2 and E3, as well as the first four characters of one of the plaintexts (`KEY{`).

This means:

```
En[0..4] ⊕ "KEY{" = K[0..4]
```

Where En is the ciphertext of the flag.

Let's first compute all three potential four first letters of the key. We use [CyberChef](https://gchq.github.io/CyberChef/#recipe=From_Hex('Auto')XOR(%7B'option':'UTF8','string':'KEY%7B'%7D,'Standard',false)To_Hex('Space',0)&input=OWQgYzIgZDMgODYK) with the "From Hex", "XOR" and "To Hex" operations to get the first potential beginning of the key.

This gives us:

```
d6 87 8a fd
de ad be ef
d6 91 85 f1
```

One of these has to be the beginning of the decryption key we are looking for. Let's put them in turn in the "Key" input of the "XOR" operation, changing the key format to "HEX", and disabling the "To Hex" operation to get characters.

The second line gives us the following 4-character plaintexts:

```
Comi
KEY{
Cybe
```

These look like words! Now we need to guess the rest.
After a few back-and-forths between key guessing and checking, we get to "Comic Books", the flag and "Cybersecure".

## Challenge 3

### Finding the challenge

Challenge 3's code can be found in the FAQ section of the Kickstarter page.

This is binary code, but bits are usually represented as bytes, which are 8 bits long, whereas this message has variable length words.

One of the most famous codes with variable length encoding is *Morse code*. After quickly checking, it seems like this is in fact the Morse code representation of a URL, with ones being dashes, and zeroes being dots.

You'll get the URL, which leads you to a bonus flag and the rest of the challenge.

### Reversing the passphrase

We are given a Python program, and asked to find the passphrase that it checks for.

The most important part is:

```
c = "LZC:36|B@6zD"
c == "".join([chr(ord(i)+1) for i in p[::2]] + [chr(ord(i)-1) for i in p[::-2]])
```

Here, "p" is the passphrase given as input to the program. If the "==" check holds, then `p` is correct.

Let's try to reverse-engineer the passphrase. Translated into english, the operation says:
- For every two characters, starting with the first one, we take the next letter or symbol in the alphabet and put them next to each other
- For every two characters, starting with the last one and going backwards, we take the previous letter or symbol in the alphabet and put them next to each other
- We take those two strings of characters and append them to each other

This means that `LZC:36` is one of every two characters from the passphrase going forward, increased by one character, and that `|B@6zD` is one of every two characters from the passphrase going backwards, decreased by one character.

In order to recover the passphrase, we need to:
- Decrease every letter from `LZC:36` by one, giving `KYB925`
- Increase every letter from `|B@6zD` by one and reverse it (flip it around), giving `E{7AC}`
- Combine `KYB925` and `E{7AC}` by taking letters from each sequentially, giving us the key in the format `KEY{...}`

## Challenge 4

### Finding the challenge

We are given a list of numbers, ranging from 05 to 811. They don't decode to anything right out of the box, so we're probably going to have to either find the correct parsing method, or manipulate the data somehow before we can decode it.

The hints that helped me with this were:
1. some numbers are prefixed with `0`, which is quite unusual
2. All 3-digit numbers end with `01` or `11`

After a few hours afk (best technique when you're stuck!), I figured it out: I should try reversing the digits!

Using [CyberChef](https://gchq.github.io/CyberChef/#recipe=Reverse('Character')From_Decimal('Space',false)&input=ODQgODQgMTExIDAxMSAwNSA4NCAyNSA3NCA4OSA4MTEgNjQgNTExIDMwMSAyMTEgMjIxIDc0IDc0IDg1IDIwMSA5OSAzMDEgMzAxIDcxMQ), we try that and get `uggcf://zpgs.vb/402no00`. This looks like a URL, but with the letters all jangled up.

Using the [cipher identifier](https://www.dcode.fr/cipher-identifier) we can figure out it's encrypted using the [ROT13 algorithm](https://en.wikipedia.org/wiki/ROT13), also known as the Caesar cipher (with a shift of 13).

Using the "ROT13" operation on CyberChef, we get our URL, and with it a bonus flag and the challenge itself.

### A phishy email

You are given an email to download. Running `strings email.eml | grep KEY` does not yield any result.
Opening it with an email application, we can see it has a docm attachment. Let's download it.
Running `strings` on it again, we do not see anything of interest.
Let's open it with a document viewer, such as [LibreOffice Writer](https://en.wikipedia.org/wiki/LibreOffice_Writer).

The form says something weird about needing to have macros enabled. Let's inspect the document's macros. In LibreOffice Writer, this is done with "Tools", "Macros", "Edit Macros".

Here is the flag, hidden in a macro!
