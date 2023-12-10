Note: This file will not be copied to the CD.
See README.txt for the one that will be.

# Requirements

* Ruby and Bundler
* Python 3
* GNU Make
* mkisofs

# Building

1. `git clone --recursive git@github.com:VazkiiMods/BotaniaCD`
1. `make`

Result will be in `BotaniaCD.iso` of the repository root

# Random

Botania proper is a submodule to allow access to the website and other stuff that's
unwieldy to vendor or changes frequently. Other static stuff like logos, etc. should just
be copied and directly committed into this repo.
