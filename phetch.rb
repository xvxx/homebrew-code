class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/xvxx/phetch"
  version "v0.9.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phetch/releases/download/v0.9.4/phetch-v0.9.4-macos.zip"
    sha256 "a4aee3b9e3c0790a1aa7ed3ab323e7539439ffd2ab3aa8cf089a166baefa2fa9"
  elsif OS.linux?
    url "https://github.com/xvxx/phetch/releases/download/v0.9.4/phetch-v0.9.4-linux-x86_64.tgz"
    sha256 "bb153ff9788fd416961cb5a17d809f40476e80af86f03cc15df73875929d040a"
  end

  def install
    bin.install "phetch"
    if File.exists? "phetch.1"
      man.install "phetch.1"
    end
  end
end

