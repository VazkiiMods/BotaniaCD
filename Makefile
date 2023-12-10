# This Makefile assembles the ISO that will be burned onto the CD
# For now, it's basically just a straight copy, excluding stuff like gitignore
# Requires mkisofs(8) to be installed

BotaniaCD.iso: build
	mkisofs -JRl -o $@ $<

.PHONY: clean
clean:
	rm -rf build
	rm -f BotaniaCD.iso
	cd Botania && git restore . && git clean -f

build/docs: docs Botania/Xplat/src/main/resources/omake.md Botania/contributors.properties
	mkdir -p $@
	cp -r docs/* $@
	cp Botania/Xplat/src/main/resources/omake.md $@
	awk -F '=' '{ print $$1; }' Botania/contributors.properties >> $@/general_supporters.txt

build: build/docs media jars README.txt .gitmodules
	mkdir -p $@
	cp -r jars $@
	cp -r media $@
	cp README.txt $@
	cd Botania && git bundle create ../$@/botania_source.bundle --all
