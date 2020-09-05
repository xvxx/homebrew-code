class Deadwiki < Formula
  desc "dead simple personal wiki"
  homepage "https://github.com/xvxx/deadwiki"
  version "v0.1.20"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.20/deadwiki-v0.1.20-macos.zip"
    sha256 "02665deeec44c9fb18c1172b7730cca926bc5c30b95490fea45904235f60a9c5"
  elsif OS.linux?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.20/deadwiki-v0.1.20-linux-x86_64.tgz"
    sha256 "e5451bc8ed9a52c49cc657da95d1a4721c778b7a8a379db8f90c4139303466e4"
  end

  def install
    bin.install "deadwiki"
    if File.exists? "deadwiki.1"
      man.install "deadwiki.1"
    end
  end
end

