class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/dvkt/phetch"
  version "v0.1.11"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.11/phetch-v0.1.11-macos.zip"
    sha256 "bc8e87484debd20a45049ae19bdb8aa1923772c93bc45187822e8be39a658c6c"
  elsif OS.linux?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.11/phetch-v0.1.11-linux-x86_64.tgz"
    sha256 "906a21a558da942bfa83739756b187a95cc0056c180c20ced4512c65a4383f22"
  end

  def install
    bin.install "phetch"
  end
end

