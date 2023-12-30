.PHONY: clean
clean:
	rm -rf build
	cd Botania && git restore . && git clean -f

build/docs: docs Botania/Xplat/src/main/resources Botania/contributors.properties Botania/web
	mkdir -p $@
	cp -r docs/* $@
	cp Botania/Xplat/src/main/resources/omake.md $@
	awk -F '=' '{ print $$1; }' Botania/contributors.properties >> $@/general_supporters.txt
	cp Botania/web/changelog.md $@/changelog.md
	python3 Botania/web/_scripts/collate_data.py Botania/Xplat/src/main/resources botania lexicon $@/lexicon.html

.DEFAULT: build
build: build/docs media jars README.txt .gitmodules
	mkdir -p $@
	cp -r jars $@
	cp -r media $@
	cp README.txt $@
	cd Botania && git bundle create ../$@/botania_source.bundle --all
