class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/xvxx/phetch"
  version "v1.2.0"

  if OS.mac?
    url "https://github.com/xvxx/phetch/releases/download/v1.2.0/phetch-v1.2.0-macos.zip"
    sha256 "508f0c2c38e33643696412f78cfd8c9c814bd4009bd962d61fdd8e7cc5e079f5"
  elsif OS.linux?
    url "https://github.com/xvxx/phetch/releases/download/v1.2.0/phetch-v1.2.0-linux-x86_64.tgz"
    sha256 "884e0cae7a2ab235195e7dd14386d8743292338d97ec53a57f02c59933c6d730"
  end

  def install
    bin.install "phetch"
    if File.exists? "phetch.1"
      man.install "phetch.1"
    end
  end
end

