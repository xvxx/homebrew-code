class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/xvxx/phetch"
  version "v0.1.13"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phetch/releases/download/v0.1.13/phetch-v0.1.13-macos.zip"
    sha256 "8a5bb2de7cae4865fce5144ba90822bca54798df8100338bc5a3a03bc19e4de0"
  elsif OS.linux?
    url "https://github.com/xvxx/phetch/releases/download/v0.1.13/phetch-v0.1.13-linux-x86_64.tgz"
    sha256 "de102ac992e9a5a20a53db1c55b4ebc464ddcaba20b121381d2e8f741d160048"
  end

  def install
    bin.install "phetch"
    if File.exists? "phetch.1"
      man.install "phetch.1"
    end
  end
end

