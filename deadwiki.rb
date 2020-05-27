class Deadwiki < Formula
  desc "dead simple personal wiki"
  homepage "https://github.com/xvxx/deadwiki"
  version "v0.1.15"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.15/deadwiki-v0.1.15-macos.zip"
    sha256 "f5e15c1e84308d0d11a577fa7498ce778a456fbaef362194af2ce96225396c6e"
  elsif OS.linux?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.15/deadwiki-v0.1.15-linux-x86_64.tgz"
    sha256 "8c4858d14d331c9218aa5a2892f6492df30ecc5897da1afb42ac27aaa192eee8"
  end

  def install
    bin.install "deadwiki"
    if File.exists? "deadwiki.1"
      man.install "deadwiki.1"
    end
  end
end

