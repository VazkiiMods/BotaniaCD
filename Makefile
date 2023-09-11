# This Makefile assembles the ISO that will be burned onto the CD
# For now, it's basically just a straight copy, excluding stuff like gitignore
# Requires mkisofs(8) to be installed

.PHONY: clean
clean:
	rm -r build
	cd Botania && git restore . && git clean -f

build: jars README.txt
	mkdir -p $@
	cp -r jars $@
	cp README.txt $@

BotaniaCD.iso: build
	mkisofs -JRl -o $@ $<
