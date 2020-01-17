class Phd < Formula
  desc "an esoteric gopher server"
  homepage "https://github.com/xvxx/phd"
  version "v0.1.8"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phd/releases/download/v0.1.8/phd-v0.1.8-macos.zip"
    sha256 "bf3b2e3692850a0268ed70cdd970258b86f718d0afcb51ccd55dd2d1b2f316af"
  elsif OS.linux?
    url "https://github.com/xvxx/phd/releases/download/v0.1.8/phd-v0.1.8-linux-x86_64.tgz"
    sha256 "3689abbf595ed7f950e2089c2c8f174c84228872bcc98388bc88e1f897b69a8f"
  end

  def install
    bin.install "phd"
    if File.exists? "phd.1"
      man.install "phd.1"
    end
  end
end

