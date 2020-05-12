PROJECT = "deadwiki"
URL = "https://github.com/xvxx/#{PROJECT}"
VERSION = "v0.1.6"

class Deadwiki < Formula
  desc "dead simple personal wiki"
  homepage URL
  version VERSION
  bottle :unneeded

  if OS.mac?
    url "#{URL}/releases/download/#{VERSION}/#{PROJECT}-#{VERSION}-macos.zip"
    sha256 "fd91891be37cc46ea2b64541153d6cdc545b282661ad7c9cf77a46fab78c502c"
  elsif OS.linux?
    url "#{URL}/releases/download/#{VERSION}/#{PROJECT}-#{VERSION}-linux-x86_64.tgz"
    sha256 "527aa6878bf10712a33f22d7aecb0a7eab81a8468f5b5f6e5c460eff53926507"
  end

  def install
    bin.install PROJECT
    if File.exists? "#{PROJECT}.1"
      man.install "#{PROJECT}.1"
    end
  end
end

