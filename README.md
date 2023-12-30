Note: This file will not be copied to the CD.
See README.txt for the one that will be.

This is the source repository for the Botania 10th anniversary CD.

It's a "CD-Extra" ([Blue Book](https://en.wikipedia.org/wiki/Blue_Book_(CD_standard))) CD,
with both audio and data tracks. The audio tracks are playable in a CD player, and the
data track can be mounted using a CD drive to access bonus non-audio content.

# Build Requirements

* Python 3
* GNU Make
* K3b (KDE Plasma Disc burning software) -- optional, only if you want to produce a full
  disc as it was sent to production.

# Building

To make the data section of the disc, do `make build`. Note that the Botania submodule
needs some special preparation, see how `.github/workflows/build.yml` prepares the repo
for more details. The output will be in the `build/` folder.

The files that are meant to go in the audio section of the disc are in `audio/`.

The K3b project that was used to produce the final Blue Book CD is located at
`k3b_project` (zip file, MIME `application/x-k3b`). It assumes this repository is checked
out under `/home/vincent/CS/BotaniaCD/`. To burn another copy of the disc, check out this
repo under that path, open the project file in K3b, and click Burn.

Alternatively, when the master disc is sent to production, the GitHub release will have
the final BIN and TOC files from the master disc uploaded and attached as well.

# Random

Botania proper is a submodule to allow access to the website and other stuff that's
unwieldy to vendor or changes frequently. Other static stuff like logos, etc. should just
be copied and directly committed into this repo.
