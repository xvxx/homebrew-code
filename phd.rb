class Phd < Formula
  desc "an esoteric gopher server"
  homepage "https://github.com/dvkt/phd"
  version "v0.1.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dvkt/phd/releases/download/v0.1.4/phd-v0.1.4-macos.zip"
    sha256 "013e0a7141996f5430ebe22c132ca17566a9598956f9c080d146c5819dad1d42"
  elsif OS.linux?
    url "https://github.com/dvkt/phd/releases/download/v0.1.4/phd-v0.1.4-linux-x86_64.tar.gz"
    sha256 "0a32fb22f95c75d644447a1afffafb0fe93cd1a165798f52b575dc58544d59ee"
  end

  def install
    bin.install "phd"
  end
end

