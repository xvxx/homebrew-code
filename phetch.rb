class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/xvxx/phetch"
  version "v0.9.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phetch/releases/download/v0.9.0/phetch-v0.9.0-macos.zip"
    sha256 "cdb3c63fa5eabfa805ebffba5e2c6e1caf2d8afb243f0fb919cad004709900c5"
  elsif OS.linux?
    url "https://github.com/xvxx/phetch/releases/download/v0.9.0/phetch-v0.9.0-linux-x86_64.tgz"
    sha256 "c92600f8be28d12fb9014bedff7b2f37af116244e25c76035d49797d4cbc4962"
  end

  def install
    bin.install "phetch"
    if File.exists? "phetch.1"
      man.install "phetch.1"
    end
  end
end

