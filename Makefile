.PHONY: phetch phetch-update phd phd-update clean

default: phetch

deadwiki: deadwiki-update
	./scripts/brew.rb deadwiki-clone/Cargo.toml > deadwiki.rb
	git commit -am "deadwiki $(VERSION)"
	rm -f *.tgz *.zip

deadwiki-update: deadwiki-clone
	cd deadwiki-clone && git pull

deadwiki-clone:
	git clone https://github.com/xvxx/deadwiki deadwiki-clone

phd: phd-update
	./scripts/brew.rb phd-clone/Cargo.toml > phd.rb
	rm -f *.tgz *.zip

phd-update: phd-clone
	cd phd-clone && git pull

phd-clone:
	git clone https://github.com/xvxx/phd phd-clone

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

shy: shy-update
	./scripts/brew.rb shy-clone/Cargo.toml > shy.rb
	git commit -am "shy $(VERSION)"
	rm -f *.tgz *.zip

shy-update: shy-clone
	cd shy-clone && git pull

shy-clone:
	git clone https://github.com/xvxx/shy shy-clone

clean:
	rm -f *.tgz *.zip *.tgz.* *.zip.*
	rm -rf *-aur *-clone
