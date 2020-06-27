class Phd < Formula
  desc "an esoteric gopher server"
  homepage "https://github.com/xvxx/phd"
  version "v0.1.12"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phd/releases/download/v0.1.12/phd-v0.1.12-macos.zip"
    sha256 "cc12f7ab12b2e22b605a159eada3ff3c4718a6ea475fda3560a293106ba97a95"
  elsif OS.linux?
    url "https://github.com/xvxx/phd/releases/download/v0.1.12/phd-v0.1.12-linux-x86_64.tgz"
    sha256 "fe806ae91c9500248930eb6d5930b6e7b733f2c97bf968335af75155cb667db5"
  end

  def install
    bin.install "phd"
    if File.exists? "phd.1"
      man.install "phd.1"
    end
  end
end

