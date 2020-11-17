class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/xvxx/phetch"
  version "v1.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phetch/releases/download/v1.1.0/phetch-v1.1.0-macos.zip"
    sha256 "5087763cc42a8d35529ce4d382a11a3aa11d44715203af2a23522c468924f5d5"
  elsif OS.linux?
    url "https://github.com/xvxx/phetch/releases/download/v1.1.0/phetch-v1.1.0-linux-x86_64.tgz"
    sha256 "6c566d8c62b0b7b3655fd912f082f5a3ad196a66666e693aeb6df3885653648d"
  end

  def install
    bin.install "phetch"
    if File.exists? "phetch.1"
      man.install "phetch.1"
    end
  end
end

