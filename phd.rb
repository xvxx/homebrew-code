class Phd < Formula
  desc "an esoteric gopher daemon"
  homepage "https://github.com/dvkt/phd/"
  version "0.1.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dvkt/phd/releases/download/v0.1.2/phd-v0.1.2-macos.zip"
    sha256 "24f53aba6f1380b4da3a30e32dd58195b6bc65a2dd1d438b499d17c73a6c1801"
  elsif OS.linux?
    url "https://github.com/dvkt/phd/releases/download/v0.1.2/phd-v0.1.2-linux-x86_64.tar.gz"
    sha256 "7fd18ea62c9219ae23bf0de36e5e446e38907e5b15c113e335e10aa20d33b131"
  end

  def install
    bin.install "phd"
  end
end
