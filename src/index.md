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
- John Hammond's videos - [1](https://www.youtube.com/watch?v=lk9_h5DoDMw) [2](https://www.youtube.com/watch?v=Oiv3TaIR9UY)

<br>

[01](#issue-01) | [02](#issue-02) | [03](#issue-03) | [04](#issue-04) | [05](#issue-05) | [06](#issue-06) | [07](#issue-07) | [08](#issue-08) | [09](#issue-09) | [10](#issue-10) | [11](#issue-11) | [12](#issue-12) | [Other](#other-99)

<br>

## <a id="issue-01"></a> 01 - OGN

<div class="row">
<div class="column">

The OGN issue came out in May 2025.

### [Cover Challenge](./01/cover.html)

### [Crack the \*\*\*\*\*\*](./01/crack.html)

### [Challenge #1](./01/1.html)

### [Challenge #2](./01/2.html)

### [Challenge #3](./01/3.html)

### [Challenge #4](./01/4.html)

### [Challenge #5](./01/5.html)

### [Challenge #6](./01/6.html)

### [Challenge #7](./01/7.html)

### Challenge #8

We're not allowed to share this one, but maybe you can find a second-hand copy of the Kickstarter edition of OGN on eBay, that's what I did.

</div>
<div class="column img-column">
<img alt="OGN Cover" src="./images/01.jpg">
</div>
</div>

<br>

## <a id="other-99"></a> 99 - Other

### [Kickstarter Announcement](./other/announcement.html)

### [Kickstarter Challenges](./other/kickstarter.html)

### [Ashcan Challenge](./other/ashcan.html)

<br>

## <a id="issue-02"></a> 02 - MARTINA

<div class="row">
<div class="column">

The MARTINA issue came out in June 2025.

### [Cover Challenge](./02/cover.html)

### [Crack the \*\*\*\*\*\*](./02/crack.html)

### [Challenge #1 - White Wolf](./02/1.html)

### [Challenge #2 - Penance](./02/2.html)

</div>
<div class="column img-column">
<img alt="MARTINA Cover" src="./images/02.jpg">
</div>
</div>

<br>

## <a id="issue-03"></a> 03 - ELI

<div class="row">
<div class="column">

The ELI issue came out in July 2025.

### [Cover Challenge](./03/cover.html)

### [Crack the \*\*\*\*\*\*](./03/crack.html)

### [Challenge #1 - Sneaks](./03/1.html)

### [Challenge #2 - Helipad](./03/2.html)

</div>
<div class="column img-column">
<img alt="ELI Cover" src="./images/03.jpg">
</div>
</div>

<br>

## <a id="issue-04"></a> 04 - SALLY

<div class="row">
<div class="column">

The SALLY issue came out in August 2025.

### [Cover Challenge](./04/cover.html)

### [Crack the \*\*\*\*\*\*](./04/crack.html)

### [Challenge #1 - EIEIO](./04/1.html)

### [Challenge #2 - Reign](./04/2.html)

</div>
<div class="column img-column">
<img alt="SALLY Cover" src="./images/04.jpg">
</div>
</div>

<br>

## <a id="issue-05"></a> 05 - ART/ARF 

<div class="row">
<div class="column">

The ART/ARF issue came out in September 2025.

### [Cover Challenge](./05/cover.html)

### [Crack the \*\*\*\*\*\*](./05/crack.html)

### [Challenge #1 - DOOMSCROLL](./05/1.html)

### [Challenge #2 - Fire](./05/2.html)

</div>
<div class="column img-column">
<img alt="ART/ARF Cover" src="./images/05.jpg">
</div>
</div>

<br>

## <a id="issue-06"></a> 06 - WHEELER, pt. 1

<div class="row">
<div class="column">

The WHEELER, pt. 1 issue came out in October 2025.

### [Cover Challenge](./06/cover.html)

### [Crack the \*\*\*\*\*\*](./06/crack.html)

### [Challenge #1 - DNA](./06/1.html)

### [Challenge #2 - Sewer](./06/2.html)

</div>
<div class="column img-column">
<img alt="WHEELER, pt. 1 Cover" src="./images/06.jpg">
</div>
</div>

<br>

## <a id="issue-07"></a> 07 - WHEELER, pt. 2

<div class="row">
<div class="column">

The WHEELER, pt. 2 issue came out in November 2025.

### [Cover Challenge](./07/cover.html)

### [Crack the \*\*\*\*\*\*](./07/crack.html)

### [Challenge #1 - Intruder](./07/1.html)

### [Challenge #2 - Stocks](./07/2.html)

</div>
<div class="column img-column">
<img alt="WHEELER, pt. 2 Cover" src="./images/07.jpg">
</div>
</div>

<br>

## <a id="issue-08"></a> 08 - GLASSHEADS, pt. 1

<div class="row">
<div class="column">

The 8th issue came out in December 2025.

Waiting on the 3-month solution embargo, look back here soon.

</div>
<div class="column img-column">
<img alt="08 (GLASSHEADS, pt. 1) Cover" src="./images/08.jpg">
<img alt="08 (GLASSHEADS, pt. 1) Alternative Cover" src="./images/08b.jpg">
</div>
</div>

<br>

## <a id="issue-09"></a> 09 - GLASSHEADS, pt. 2

<div class="row">
<div class="column">

The 9th issue came out in January 2026.

Waiting on the 3-month solution embargo, look back here soon.

</div>
<div class="column img-column">
<img alt="09 (GLASSHEADS, pt. 2) Cover" src="./images/09.jpg">
<img alt="09 (GLASSHEADS, pt. 2) Alternative Cover" src="./images/09b.jpg">
</div>
</div>

<br>

## <a id="issue-10"></a> 10 - GLASSHEADS, pt. 3

<div class="row">
<div class="column">

The 10th issue came out in February 2026.

Waiting on the 3-month solution embargo, look back here soon.

</div>
<div class="column img-column">
<img alt="10 (GLASSHEADS, pt. 3) Cover" src="./images/10.jpg">
<img alt="09 (GLASSHEADS, pt. 3) Alternative Cover" src="./images/10b.jpg">
</div>
</div>

<br>

## <a id="issue-11"></a> 11 - GLASSHEADS, pt. 4

<div class="row">
<div class="column">

The 11th issue will come out in March 2026.

</div>
<div class="column img-column">
<img alt="11 (GLASSHEADS, pt. 4) Cover" src="./images/11.jpg">
</div>
</div>

<br>

## <a id="issue-12"></a> 12 - GLASSHEADS, pt. 5

<div class="row">
<div class="column">

The 12th issue will come out in April 2026.

</div>
<div class="column img-column">
<img alt="11 (GLASSHEADS, pt. 5) Cover" src="./images/12.jpg">
</div>
</div>

<br>
