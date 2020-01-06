class Phd < Formula
  desc "an esoteric gopher server"
  homepage "https://github.com/dvkt/phd"
  version "v0.1.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dvkt/phd/releases/download/v0.1.6/phd-v0.1.6-macos.zip"
    sha256 "becd8be6f30bf1c9895581e9d424205a1ba7be95574b2e8585009961dd31eb2e"
  elsif OS.linux?
    url "https://github.com/dvkt/phd/releases/download/v0.1.6/phd-v0.1.6-linux-x86_64.tgz"
    sha256 "30322ced4d27885132f3883dde4bb56844888ec804d6984cdb89bfd8fa8d8bb0"
  end

  def install
    bin.install "phd"
  end
end

