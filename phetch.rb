class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/xvxx/phetch"
  version "v1.0.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phetch/releases/download/v1.0.5/phetch-v1.0.5-macos.zip"
    sha256 "6e9577a65312f68bb6fff6513a516782d28f677b6134725fbdd5d861e9390c27"
  elsif OS.linux?
    url "https://github.com/xvxx/phetch/releases/download/v1.0.5/phetch-v1.0.5-linux-x86_64.tgz"
    sha256 "b7fff0dc48185f010bfcb780fbd14f2e83012fbe4c9b73265772aeb071ac4ccc"
  end

  def install
    bin.install "phetch"
    if File.exists? "phetch.1"
      man.install "phetch.1"
    end
  end
end

