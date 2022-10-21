# GreekTyper

(Julia/Dash edition)

This web-app allows users to type ancient polytonic Greek using only ASCII characters. The app will transliterate this into proper, Unicode Greek, which may then be copied and pasted elsewhere.

The scheme for typing Greek in ASCII is *Beta Code*. It dates back to the 1970s and the earliest projects to work with Greek computationally.

[Here is a reference guide to Beta Code that this application recognizes](character_table.md)

## Running

1. Download [Julia](https://julialang.org/downloads/) and do whatever it takes to install it.
1. Clone this repository.
1. In the terminal: `julia GreekTyper_Julia/app.jl`.
1. There is a good chance that you will need to add some libraries via Julia's package manager. Julia will tell you what to do. Do that.
1. When it is up and running (the initial load may take a while, as it downloads and compiles necessary libraries), visit `http://localhost:8054/` in your browser.