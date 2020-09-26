class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/xvxx/phetch"
  version "v1.0.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phetch/releases/download/v1.0.4/phetch-v1.0.4-macos.zip"
    sha256 "7e2fbca128d76bb8321f1089336f59bf0a1905455bc1ee4e6cdaba5b63e7b210"
  elsif OS.linux?
    url "https://github.com/xvxx/phetch/releases/download/v1.0.4/phetch-v1.0.4-linux-x86_64.tgz"
    sha256 "344adad56c4c6c0b0a49d937036fa84213bfe4b80c3474d3577de02bbb4d5606"
  end

  def install
    bin.install "phetch"
    if File.exists? "phetch.1"
      man.install "phetch.1"
    end
  end
end

