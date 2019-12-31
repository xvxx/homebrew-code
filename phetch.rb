class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/dvkt/phetch"
  version "v0.1.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.7/phetch-v0.1.7-macos.zip"
    sha256 "ab25cc8161c52006ca4a6d50416d6a1447385eb9ea8ef536b5677f92ea4a80b4"
  elsif OS.linux?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.7/phetch-v0.1.7-linux-x86_64.tar.gz"
    sha256 "3c89bb9085f06042ea42f419f0a2158d6ae019dac545bc93ebf5ab0f22b39059"
  end

  def install
    bin.install "phetch"
  end
end

