[back to home](./index.html)

# Kickstarter Announcement

The [social media announcement](https://x.com/BHinfoSecurity/status/1765837749611905455) for the TFI kickstarter has an image attached.

![image from the announcement](./images/announcement.jpg)

This image has a pretty interesting string of digits on the side.

I immediately thought of [ASCII](https://en.wikipedia.org/wiki/ASCII) character codes, but now the tricky part is: how do you separate the characters?

Here is something helpful to know about ASCII character codes: 0 to 31 are invisible symbols. This means the first group of digits are most likely not "1" or "10" but "104", which corresponds to "h".

Using this logic on the rest of the digits, you end up with an https URL, which gives us the flag, as well as a few hints for the [kickstarter challenges](./99_kickstarter.html).