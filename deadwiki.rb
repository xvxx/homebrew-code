class Deadwiki < Formula
  desc "dead simple personal wiki"
  homepage "https://github.com/xvxx/deadwiki"
  version "v0.1.19"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.19/deadwiki-v0.1.19-macos.zip"
    sha256 "5e42b8eabfde34f4d84a9c2d1f9b1dee9fe20d189e8d16e037ec7fd95011e6c9"
  elsif OS.linux?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.19/deadwiki-v0.1.19-linux-x86_64.tgz"
    sha256 "c757ace6679c3ee57a960bd6a6d0781a6c2d9e117f6e8e1a334f8af87387675c"
  end

  def install
    bin.install "deadwiki"
    if File.exists? "deadwiki.1"
      man.install "deadwiki.1"
    end
  end
end

