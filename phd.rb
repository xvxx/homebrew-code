class Phd < Formula
  desc "an esoteric gopher daemon"
  homepage "https://github.com/dvkt/phd/"
  version "0.1.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dvkt/phd/releases/download/v0.1.3/phd-v0.1.2-macos.zip"
    sha256 "94aa5259933386c02b10f98cede05aefda8f45eb0f579ce167eff0da42065ef0"
  elsif OS.linux?
    url "https://github.com/dvkt/phd/releases/download/v0.1.3/phd-v0.1.2-linux-x86_64.tar.gz"
    sha256 "37e3292652a81e447789625e029dd4175b07a0c4e7008f9c808cf39c40cd6b6b"
  end

  def install
    bin.install "phd"
  end
end
