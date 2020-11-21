class Deadwiki < Formula
  desc "dead simple personal wiki"
  homepage "https://github.com/xvxx/deadwiki"
  version "v0.1.26"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.26/deadwiki-v0.1.26-macos.zip"
    sha256 "a4b3a05d620e04169ab117d8fc19f754f4c9f5db7644c0ef32ef059c57c2cf92"
  elsif OS.linux?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.26/deadwiki-v0.1.26-linux-x86_64.tgz"
    sha256 "d553ffd10aab255e3cc96c6a92cd50630d6ef74e7614eba4e7ac6b725c6900a1"
  end

  def install
    bin.install "dead"
    if File.exists? "deadwiki.1"
      man.install "deadwiki.1"
    end
  end
end

