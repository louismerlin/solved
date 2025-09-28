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

On this website, I'll show you how to solve challenges from *The Future Is \*\*\*\*\*\** from [REKAH Comics](https://www.blackhillsinfosec.com/rekcah/).

Here are links to other people who are doing the same thing:

- [Setral's GitHub repo](https://github.com/setral/CTF_Writeups/tree/main/The%20Future%20is%20******)
- [Skycritch's website](https://www.skycritch.com/the-future-is/)
- [joshb's blog](https://itsjoshb.com/blog/martina-white-wolf/)

<br>

## 01 - OGN

<div class="row">
<div class="column">

The OGN issue came out on May 28th 2025.

### [Cover Challenge](./01_cover.html)

### [Crack the \*\*\*\*\*\*](./01_crack.html)

### [Challenge #1](./01_1.html)

### [Challenge #2](./01_2.html)

### [Challenge #3](./01_3.html)

### [Challenge #4](./01_4.html)

### [Challenge #5](./01_5.html)

### [Challenge #6](./01_6.html)

### [Challenge #7](./01_7.html)

### Challenge #8

We're not allowed to share this one, but maybe you can find a second-hand copy of the Kickstarter edition of OGN on eBay, that's what I did.

</div>
<div class="column img-column">
<img alt="OGN Cover" src="./images/01.jpg">
</div>
</div>

<br>

## 99 - Other

### [Kickstarter Announcement](./99_announcement.html)

### [Kickstarter Challenges](./99_kickstarter.html)

### [Ashcan Challenge](./99_ashcan.html)

<br>

## 02 - MARTINA

<div class="row">
<div class="column">

The MARTINA issue came out on June 11th 2025.

### [Cover Challenge](./02_cover.html)

### [Crack the \*\*\*\*\*\*](./02_crack.html)

### [Challenge #1 - White Wolf](./02_1.html)

### [Challenge #2 - Penance](./02_2.html)

</div>
<div class="column img-column">
<img alt="MARTINA Cover" src="./images/02.jpg">
</div>
</div>

<br>

## 03 - ELI

<div class="row">
<div class="column">

The ELI issue came out on July 9th 2025.

Waiting on the 3-month solution embargo, look back here soon.

</div>
<div class="column img-column">
<img alt="ELI Cover" src="./images/03.jpg">
</div>
</div>

<br>

## 04 - SALLY

<div class="row">
<div class="column">

The SALLY issue came out on August 13th 2025.

Waiting on the 3-month solution embargo, look back here soon.

</div>
<div class="column img-column">
<img alt="SALLY Cover" src="./images/04.jpg">
</div>
</div>

<br>

## 05 - ART/ARF 

<div class="row">
<div class="column">

The ART/ARF issue came out on September 10th 2025.

Waiting on the 3-month solution embargo, look back here soon.

</div>
<div class="column img-column">
<img alt="ART/ARF Cover" src="./images/05.jpg">
</div>
</div>

<br>