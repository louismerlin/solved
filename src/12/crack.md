[back to home](../index.html)

# GLASSHEADS, pt. 5 Crack the \*\*\*\*\*\*

This challenge can be found on the inside of the cover of issue 12.

The challenge mentions "chip codes". This is a very valuable hint: they are used in [CDMA](https://en.wikipedia.org/wiki/Code-division_multiple_access) (Code Division Multiple Access), where several transmitters share the same channel at the same time.

Each bit is sent as `+1` (for a `1`) or `-1` (for a `0`), and multiplied by the transmitter's chip code.
Child A has the code `+1 +1`, so it sends `+1 +1` for a `1` and `-1 -1` for a `0`.
Child B has the code `+1 -1`, so it sends `+1 -1` for a `1` and `-1 +1` for a `0`.
Both children transmit at once, and the two signals are added together on the wire. 
The sum is what the black chart shows.

Click the bits below to see how two bytes combine into a signal like the one inside the cover:

<div id="cdma" style="margin:1rem 0"></div>

<script>
(() => {
  const root = document.getElementById('cdma');
  const codes = { A: [1, 1], B: [1, -1] };
  const colors = { A: '#ec008c', B: '#0090ff' };
  const bits = { A: [0, 1, 0, 0, 1, 0, 1, 0], B: [0, 1, 0, 1, 1, 0, 0, 1] };
  const ns = 'http://www.w3.org/2000/svg';
  const L = 50, step = 36, x = i => L + i * step;
  const ui = {};

  for (const c of ['A', 'B']) {
    const row = document.createElement('div');
    row.style.cssText = 'display:flex;align-items:center;gap:.25rem;flex-wrap:wrap;font-family:monospace;margin-bottom:.4rem';
    row.append(`Child ${c}`);
    const buttons = bits[c].map((_, i) => {
      const b = document.createElement('button');
      b.style.cssText = 'margin:0;padding:.1rem .4rem;font-family:monospace';
      b.onclick = () => { bits[c][i] ^= 1; draw(); };
      row.append(b);
      return b;
    });
    const char = document.createElement('span');
    row.append(char);
    root.append(row);
    ui[c] = { buttons, char };
  }

  const svg = document.createElementNS(ns, 'svg');
  svg.setAttribute('viewBox', '0 0 640 330');
  svg.setAttribute('role', 'img');
  svg.setAttribute('aria-label', 'Signals of child A, child B, and their sum');
  svg.style.cssText = 'width:100%;height:auto;color:var(--fg)';
  root.append(svg);

  const el = (tag, attrs, text) => {
    const e = document.createElementNS(ns, tag);
    for (const k in attrs) e.setAttribute(k, attrs[k]);
    if (text !== undefined) e.textContent = text;
    svg.append(e);
    return e;
  };
  const signal = c => bits[c].flatMap(b => codes[c].map(k => (b ? 1 : -1) * k));
  const plot = (vals, top, h, max, color, label) => {
    const y = v => top + h / 2 - (v / max) * (h / 2);
    el('line', { x1: L, x2: x(16), y1: y(0), y2: y(0), stroke: 'currentColor', 'stroke-opacity': .2 });
    el('text', { x: 0, y: y(0) + 4, fill: 'currentColor', 'font-size': 12, 'font-family': 'monospace' }, label);
    let d = `M${x(0)} ${y(vals[0])}`;
    vals.forEach((v, i) => { d += `H${x(i + 1)}` + (i < 15 ? `V${y(vals[i + 1])}` : ''); });
    el('path', { d, fill: 'none', stroke: color, 'stroke-width': 3 });
    if (max > 1) vals.forEach((v, i) => el('text', { x: x(i) + step / 2, y: v >= 0 ? y(v) - 5 : y(v) + 14, 'text-anchor': 'middle', 'font-size': 10, 'font-family': 'monospace', fill: color }, v > 0 ? `+${v}` : v));
  };

  function draw() {
    svg.replaceChildren();
    for (const c of ['A', 'B']) {
      ui[c].buttons.forEach((b, i) => {
        b.textContent = bits[c][i];
        b.style.background = bits[c][i] ? colors[c] : '';
        b.style.color = bits[c][i] ? '#fff' : '';
      });
      const n = parseInt(bits[c].join(''), 2);
      ui[c].char.textContent = `= 0x${n.toString(16).padStart(2, '0')} ` + (n > 32 && n < 127 ? `'${String.fromCharCode(n)}'` : '');
    }
    for (let i = 0; i <= 16; i += 2) {
      el('line', { x1: x(i), x2: x(i), y1: 5, y2: 300, stroke: 'currentColor', 'stroke-opacity': .3, 'stroke-dasharray': '2 3' });
    }
    const a = signal('A'), b = signal('B'), sum = a.map((v, i) => v + b[i]);
    plot(a, 15, 50, 1, colors.A, 'A');
    plot(b, 95, 50, 1, colors.B, 'B');
    plot(sum, 180, 100, 2, 'currentColor', 'A+B');
    for (let i = 0; i < 8; i++) {
      const [s0, s1] = [sum[2 * i], sum[2 * i + 1]];
      const da = (s0 + s1) / 2 > 0 ? 1 : 0, db = (s0 - s1) / 2 > 0 ? 1 : 0;
      const t = el('text', { x: x(2 * i) + step, y: 320, 'text-anchor': 'middle', 'font-size': 13, 'font-family': 'monospace' });
      for (const [v, c] of [[da, 'A'], [db, 'B']]) {
        const s = document.createElementNS(ns, 'tspan');
        s.setAttribute('fill', colors[c]);
        s.textContent = c === 'A' ? `${v} ` : v;
        t.append(s);
      }
    }
    el('text', { x: 0, y: 320, fill: 'currentColor', 'font-size': 12, 'font-family': 'monospace' }, 'bits');
  }
  draw();
})();
</script>

There are only four possible pairs on the wire:

```
pair      A  B
-2  0  => 0  0
 2  0  => 1  1
 0 -2  => 0  1
 0  2  => 1  0
```

The cover shows 48 chips, so 24 bits per child: three 8-bit ASCII characters each.
Each row of the chart carries exactly one character from each child.
Reading the characters alternately (A, B, A, B, A, B), we get our six-letter word.
