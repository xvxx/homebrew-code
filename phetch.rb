class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/xvxx/phetch"
  version "v1.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phetch/releases/download/v1.0.1/phetch-v1.0.1-macos.zip"
    sha256 "4e322eb87dd3ba292a660093422daecb138403333a35cbb9936cbd3db78e4d99"
  elsif OS.linux?
    url "https://github.com/xvxx/phetch/releases/download/v1.0.1/phetch-v1.0.1-linux-x86_64.tgz"
    sha256 "9059128c0cc152de4ca40342bd2e7811311e50153c861863e5763e44b92eef77"
  end

  def install
    bin.install "phetch"
    if File.exists? "phetch.1"
      man.install "phetch.1"
    end
  end
end

