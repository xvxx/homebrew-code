class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/dvkt/phetch"
  version "v0.1.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.5/phetch-v0.1.5-macos.zip"
    sha256 "7c67148eab8fc7c36d5dfcd29e55e6edb5463fc3dc739eb2a7e9728a27f0fee1"
  elsif OS.linux?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.5/phetch-v0.1.5-linux-x86_64.tar.gz"
    sha256 "5b0c40ba8e9615adf61ae7f8e9f4141956e1314a2f88b37e5ed2dbc210eb3e93"
  end

  def install
    bin.install "phetch"
  end
end

