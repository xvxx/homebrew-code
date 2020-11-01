class Shy < Formula
  desc "bare-bones ssh launcher"
  homepage "https://github.com/xvxx/shy"
  version "v0.1.9"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/shy/releases/download/v0.1.9/shy-v0.1.9-macos.zip"
    sha256 "e77b73dc9a6403501a171cee2abeeea8a043af918189ce5efde1f5f1009b7841"
  elsif OS.linux?
    url "https://github.com/xvxx/shy/releases/download/v0.1.9/shy-v0.1.9-linux-x86_64.tgz"
    sha256 "e4402b6d80b7e2174765c82abb9d31dda3dfc3bf414291d9844519d8c8559ca0"
  end

  def install
    bin.install "shy"
    if File.exists? "shy.1"
      man.install "shy.1"
    end
  end
end

