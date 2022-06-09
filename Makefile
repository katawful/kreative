.PHONY: deps compile test

default: deps compile test

deps:
	scripts/dep.sh Olical aniseed origin/master
	scripts/dep.sh katawful katcros-fnl origin/main

compile:
	rm -rf lua/kreative

	# Remove this if you only want Aniseed at compile time.
	deps/aniseed/scripts/embed.sh aniseed kreative
	deps/aniseed/scripts/embed.sh katcros-fnl kreative

	# Also remove this embed prefix if you're not using Aniseed inside your plugin at runtime.
	ANISEED_EMBED_PREFIX=kreative deps/aniseed/scripts/compile.sh

test:
	rm -rf test/lua
	deps/aniseed/scripts/test.sh
