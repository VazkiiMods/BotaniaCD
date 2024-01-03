Note: This file will not be copied to the CD.
See README.txt for the one that will be.

This is the source repository for the Botania 10th anniversary CD.

It's a classical "Mixed Mode" CD. There is one session with 8 tracks. The first track is
the data track containing an ISO9660 filesytem, and the 7 remaining tracks are audio
tracks.

# Build Requirements

* Python 3
* GNU Make
* mkisofs and cdrdao

# Building

1. Clone this repo
2. Prepare the submodule repository, see how `.github/workflows/build.yml` prepares the
repo for more details.
3. Execute `make BotaniaCD.iso` to create the ISO of the data track
4. Burn everything to a disc: `cdrdao --device /dev/your-cd-drive tocfile`

# Random

Botania proper is a submodule to allow access to the website and other stuff that's
unwieldy to vendor or changes frequently. Other static stuff like logos, etc. should just
be copied and directly committed into this repo.

# Thanks
See docs/afterword.txt for credits
