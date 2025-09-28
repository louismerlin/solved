[back to home](./index.html)

# Kickstarter Challenges

You'll find these challenges dispersed in the [kickstarter page](https://www.kickstarter.com/projects/rekcah/the-future-is-from-rekcah-comics) for the original crowdfunding campaign of the comic book series.

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

As an alternative to all of this, you can open-up your terminal and run the command:

```bash
curl -A "Chrome/476" https://challenge_url
```

## Challenge 2

### Finding the challenge

Coming soon

## Challenge 3

Coming Soon

## Challenge 4

Coming Soon