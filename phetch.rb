class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/xvxx/phetch"
  version "v1.0.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phetch/releases/download/v1.0.0/phetch-v1.0.0-macos.zip"
    sha256 "86f9846b001dbc7ad7faa61aaa059233be7790620b511254ce22787cb387f061"
  elsif OS.linux?
    url "https://github.com/xvxx/phetch/releases/download/v1.0.0/phetch-v1.0.0-linux-x86_64.tgz"
    sha256 "ac5800a63bd5a9c41fbdec54cda8ff2dd2fa880747e30624ff228cc1267fca68"
  end

  def install
    bin.install "phetch"
    if File.exists? "phetch.1"
      man.install "phetch.1"
    end
  end
end

