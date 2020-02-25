.PHONY: phetch

phetch: phetch-update
	./scripts/brew.rb phetch-clone/Cargo.toml > phetch.rb
	make clean

phetch-update: phetch-clone
	cd phetch-clone && git pull

phetch-clone:
	git clone https://github.com/xvxx/phetch phetch-clone

clean:
	rm -f *.tgz *.zip