class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/dvkt/phetch"
  version "v0.1.9"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.9/phetch-v0.1.9-macos.zip"
    sha256 "b451ffe0e16c5b20ed9231a3951846de76488c2487aac80661f054effb866f11"
  elsif OS.linux?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.9/phetch-v0.1.9-linux-x86_64.tar.gz"
    sha256 "42b57230c137781492f98508019a9912eb3c027c9cdbb66de18a4cc3d79ab462"
  end

  def install
    bin.install "phetch"
  end
end

