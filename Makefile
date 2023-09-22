# This Makefile assembles the ISO that will be burned onto the CD
# For now, it's basically just a straight copy, excluding stuff like gitignore
# Requires mkisofs(8) to be installed

BotaniaCD.iso: build
	mkisofs -JRl -o $@ $<

.PHONY: clean
clean:
	rm -rf build
	cd Botania && git restore . && git clean -f

build/docs: docs
	mkdir -p $@
	cp -r docs/* $@
	awk -F '=' '{ print $$1; }' Botania/contributors.properties >> $@/general_supporters.txt

build: build/docs media jars README.txt
	mkdir -p $@
	cp -r jars $@
	cp -r media $@
	cp README.txt $@
