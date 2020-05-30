class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/xvxx/phetch"
  version "v1.0.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phetch/releases/download/v1.0.3/phetch-v1.0.3-macos.zip"
    sha256 "c7971012ac652cd2a0b84f0b36a4653ec9007f4379ef62789d20367457430117"
  elsif OS.linux?
    url "https://github.com/xvxx/phetch/releases/download/v1.0.3/phetch-v1.0.3-linux-x86_64.tgz"
    sha256 "ff313a11f9e259385b53a84cd50a4d430bc2c7c3b8e89da930fc5fe14349d673"
  end

  def install
    bin.install "phetch"
    if File.exists? "phetch.1"
      man.install "phetch.1"
    end
  end
end

