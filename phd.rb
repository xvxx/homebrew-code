class Phd < Formula
  desc "an esoteric gopher server"
  homepage "https://github.com/xvxx/phd"
  version "v0.1.11"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phd/releases/download/v0.1.11/phd-v0.1.11-macos.zip"
    sha256 "fd91891be37cc46ea2b64541153d6cdc545b282661ad7c9cf77a46fab78c502c"
  elsif OS.linux?
    url "https://github.com/xvxx/phd/releases/download/v0.1.11/phd-v0.1.11-linux-x86_64.tgz"
    sha256 "527aa6878bf10712a33f22d7aecb0a7eab81a8468f5b5f6e5c460eff53926507"
  end

  def install
    bin.install "phd"
    if File.exists? "phd.1"
      man.install "phd.1"
    end
  end
end

