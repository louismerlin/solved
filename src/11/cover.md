[back to home](../index.html)

# GLASSHEADS, pt. 4 Cover Challenge

This challenge can be found on the cover of issue 11. Spot the strings of code beneath the issue number.

## The shell

We are given what looks like a line of obfuscated shell.

The `$'...'` pieces are [ANSI-C quoting](https://www.gnu.org/software/bash/manual/html_node/ANSI_002dC-Quoting.html): each `\x..` is a hex byte.
The `$(L)`, `$(U)` and `$(Z)` in between are command substitutions.
`L`, `U` and `Z` are not commands, so they expand to nothing (and any error is sent to `/dev/null`), which means they are just there to distract us.

Decoding the hex characters gives us a URL, which leads us to the flag.
