class Deadwiki < Formula
  desc "dead simple personal wiki"
  homepage "https://github.com/xvxx/deadwiki"
  version "v0.1.17"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.17/deadwiki-v0.1.17-macos.zip"
    sha256 "3d16dcd7f8c9a95f54bdb234905e46b0e211c4c94c207900dece00b0b30cd852"
  elsif OS.linux?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.17/deadwiki-v0.1.17-linux-x86_64.tgz"
    sha256 "5da015cd6d755907ff1794b6625ddf5a785353fd5fad6a35f924751fa5b624a4"
  end

  def install
    bin.install "deadwiki"
    if File.exists? "deadwiki.1"
      man.install "deadwiki.1"
    end
  end
end

