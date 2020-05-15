class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/xvxx/phetch"
  version "v1.0.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phetch/releases/download/v1.0.2/phetch-v1.0.2-macos.zip"
    sha256 "db9e3512451de2fbb8a5b61c09291243da50a335d9c9cf72a128b11de322d670"
  elsif OS.linux?
    url "https://github.com/xvxx/phetch/releases/download/v1.0.2/phetch-v1.0.2-linux-x86_64.tgz"
    sha256 "c361e37f9ad76b839d9c6abea54bc8f74e9cd428fb6845a090d10a1cca468df1"
  end

  def install
    bin.install "phetch"
    if File.exists? "phetch.1"
      man.install "phetch.1"
    end
  end
end

