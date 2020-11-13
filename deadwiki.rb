class Deadwiki < Formula
  desc "dead simple personal wiki"
  homepage "https://github.com/xvxx/deadwiki"
  version "v0.1.25"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.25/deadwiki-v0.1.25-macos.zip"
    sha256 "f95ea4b67c0d9c0c8991c764ac841468a8e0c8e464a81ffea39fe5c8fbc61f1c"
  elsif OS.linux?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.25/deadwiki-v0.1.25-linux-x86_64.tgz"
    sha256 "dcf952f019d208164098267d01ed0da27fc40149ed3e255580e26cdae66352b4"
  end

  def install
    bin.install "dead"
    if File.exists? "deadwiki.1"
      man.install "deadwiki.1"
    end
  end
end

