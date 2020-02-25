.PHONY: phetch

default: phetch

phetch: phetch-update
	./scripts/brew.rb phetch-clone/Cargo.toml > phetch.rb
	./scripts/aur.rb
	rm -f *.tgz *.zip

phetch-update: phetch-clone phetch-aur
	cd phetch-clone && git pull
	cd phetch-aur && git checkout . && git pull

phetch-aur:
	git clone ssh://aur@aur.archlinux.org/phetch.git phetch-aur

phetch-clone:
	git clone https://github.com/xvxx/phetch phetch-clone

clean:
	rm -f *.tgz *.zip *.tgz.* *.zip.*
	rm -rf phetch-aur phetch-clone