# THE FUTURE IS <span id="puzzle">\*\*\*\*\*\*</span>

<script>
const el = document.getElementById('puzzle');
const target = 'SOLVED';
let pos = 0;

function flick() {
    if (pos >= target.length) return;
    
    let current = el.textContent;
    let charCode = 65;
    
    const interval = setInterval(() => {
        current = current.substring(0, pos) + String.fromCharCode(charCode) + current.substring(pos + 1);
        el.textContent = current;
        
        if (charCode === target.charCodeAt(pos)) {
            clearInterval(interval);
            pos++;
            setTimeout(flick, 50);
        }
        
        charCode = charCode === 90 ? 65 : charCode + 1;
    }, 50);
}

setTimeout(flick, 1000);
</script>

On this website, I'll show you how to solve challenges from **THE FUTURE IS \*\*\*\*\*\*** from [REKAH Comics](https://www.blackhillsinfosec.com/rekcah/).

Here are links to other people who are doing the same thing:

- [Setral's GitHub repo](https://github.com/setral/CTF_Writeups/tree/main/The%20Future%20is%20******)
- [Skycritch's website](https://www.skycritch.com/the-future-is/)

<br>

## 01 - OGN

The OGN issue came out on May 28th 2025.

It contains 7 challenges, plus the cover challenge and an additional challenge in the kickstarter edition.

### Cover Challenge

Coming Soon

### Challenge #1 - #4

Coming Soon

### [Challenge #5](./01_5.html)

### [Challenge #6](./01_6.html)

### [Challenge #7](./01_7.html)

### Challenge #8

We're not allowed to share this one, but maybe you can find a second-hand copy of the Kickstarter edition of OGN on eBay, that's what I did.

<br>

## 02 - MARTINA

The Martina issue came out June 11th 2025.

Waiting on the 3-month solution embargo, look back here soon.
