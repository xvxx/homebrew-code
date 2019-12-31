class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/dvkt/phetch"
  version "v0.1.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.6/phetch-v0.1.6-macos.zip"
    sha256 "9c0a1c91695f542b8dcf544628bf87bd028a5bba4057811eae9057c8d7c4b4ce"
  elsif OS.linux?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.6/phetch-v0.1.6-linux-x86_64.tar.gz"
    sha256 "0b405ae317376f1de0b421c34fd685750ce1244975ca8955d43a3faf8ad7f17d"
  end

  def install
    bin.install "phetch"
  end
end

