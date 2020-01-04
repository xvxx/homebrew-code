class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/dvkt/phetch"
  version "v0.1.10"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.10/phetch-v0.1.10-macos.zip"
    sha256 "6103264c11feff2d18411fbf58137e89d92976b382eb02bb7d6a2b0e66214fad"
  elsif OS.linux?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.10/phetch-v0.1.10-linux-x86_64.tar.gz"
    sha256 "6804d38b05991941b402c45ffc86c314d02dd7491f7b71937feb145eb6bbcae7"
  end

  def install
    bin.install "phetch"
  end
end
