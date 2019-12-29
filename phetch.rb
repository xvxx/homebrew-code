class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/dvkt/phetch/"
  version "0.1.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.4/phetch-v0.1.4-macos.zip"
    sha256 "a188e9690a11be0245dcbb5f11c33d1a60d6cd84aded8d0a878fa223b493e52b"
  elsif OS.linux?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.4/phetch-v0.1.4-linux-x86_64.tar.gz"
    sha256 "bca9da1d4d5202def6f6703c44d636fdc1ac415486f0b66a9e2754d0be64d69d"
  end

  def install
    bin.install "phetch"
  end
end
