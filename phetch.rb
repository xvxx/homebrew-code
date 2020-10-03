class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/xvxx/phetch"
  version "v1.0.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phetch/releases/download/v1.0.7/phetch-v1.0.7-macos.zip"
    sha256 "bc1fa129ef95e956ee73f55127f8173789a16c3cc7998fee5dec3424ee9a0f34"
  elsif OS.linux?
    url "https://github.com/xvxx/phetch/releases/download/v1.0.7/phetch-v1.0.7-linux-x86_64.tgz"
    sha256 "f215dc9b3f8e98f6f80bdf8c578c89b15079ee189af130856f47dfafb3c34c22"
  end

  def install
    bin.install "phetch"
    if File.exists? "phetch.1"
      man.install "phetch.1"
    end
  end
end

