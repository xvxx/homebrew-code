class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/dvkt/phetch"
  version "v0.1.12"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.12/phetch-v0.1.12-macos.zip"
    sha256 "b3f786b577b73c4437f2b64e5a2ed43a19c6ae2db15a04ff111b45341e2de4ed"
  elsif OS.linux?
    url "https://github.com/dvkt/phetch/releases/download/v0.1.12/phetch-v0.1.12-linux-x86_64.tgz"
    sha256 "852b222a6fe91a5cf06e40113f23f22448d53695cf266585c3d9cc0ae63a20c1"
  end

  def install
    bin.install "phetch"
    if File.exists? "phetch.1"
      man.install "phetch.1"
    end
  end
end

