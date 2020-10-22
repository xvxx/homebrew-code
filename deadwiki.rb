class Deadwiki < Formula
  desc "dead simple personal wiki"
  homepage "https://github.com/xvxx/deadwiki"
  version "v0.1.23"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.23/deadwiki-v0.1.23-macos.zip"
    sha256 "3f11893ab08880cce23bc5eb6e6b436389383651f64c996d08e8f4ca7c8056e6"
  elsif OS.linux?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.23/deadwiki-v0.1.23-linux-x86_64.tgz"
    sha256 "226b843e5f117b20fb2485c78c119e6128b9faf92316cb84de15fcb3e66db34d"
  end

  def install
    bin.install "deadwiki"
    if File.exists? "deadwiki.1"
      man.install "deadwiki.1"
    end
  end
end

