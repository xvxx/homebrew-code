class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/dvkt/phetch"
  version "v0.1.9"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.9/phetch-v0.1.9-macos.zip"
    sha256 "b8f2e1904700d0139ca3da0197b04328fdcffe7c6542a78f76a2a4714936d3fb"
  elsif OS.linux?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.9/phetch-v0.1.9-linux-x86_64.tar.gz"
    sha256 "11246979eafe40e0608d068d6bd708ae018638266c784e97647e84a0572ef849"
  end

  def install
    bin.install "phetch"
  end
end

