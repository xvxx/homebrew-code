class Phd < Formula
  desc "an esoteric gopher server"
  homepage "https://github.com/dvkt/phd"
  version "v0.1.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dvkt/phd/releases/download/v0.1.5/phd-v0.1.5-macos.zip"
    sha256 "37dafeb71b6cf9655f0c211c36bdad36148d604316b7b1142e400669c7d3de2a"
  elsif OS.linux?
    url "https://github.com/dvkt/phd/releases/download/v0.1.5/phd-v0.1.5-linux-x86_64.tar.gz"
    sha256 "713535729f0c86640590ccee1ebabcc3742787f7f642b50c3be1a77d60f815e0"
  end

  def install
    bin.install "phd"
  end
end

