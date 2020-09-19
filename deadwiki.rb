class Deadwiki < Formula
  desc "dead simple personal wiki"
  homepage "https://github.com/xvxx/deadwiki"
  version "v0.1.22"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.22/deadwiki-v0.1.22-macos.zip"
    sha256 "5ff50dd62ac971c5802fc9038f4b58a2d2a093523d488d3d0cfd2694b1279e71"
  elsif OS.linux?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.22/deadwiki-v0.1.22-linux-x86_64.tgz"
    sha256 "d4a8c0116222b8282aeef8dc7a6dfecd988033d66985d55aaff904b13489c2ab"
  end

  def install
    bin.install "deadwiki"
    if File.exists? "deadwiki.1"
      man.install "deadwiki.1"
    end
  end
end

