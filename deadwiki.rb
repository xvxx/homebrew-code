class Deadwiki < Formula
  desc "dead simple personal wiki"
  homepage "https://github.com/xvxx/deadwiki"
  version "v0.1.16"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.16/deadwiki-v0.1.16-macos.zip"
    sha256 "4fa0f5ec8829179cfdf86b504e480ae124c7b97738ed854793f13c9ed91e7610"
  elsif OS.linux?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.16/deadwiki-v0.1.16-linux-x86_64.tgz"
    sha256 "2773af55f1e456cbdcf36aa8fff405e20e7423bc4fa8c51e630948c4f3f6d8c6"
  end

  def install
    bin.install "deadwiki"
    if File.exists? "deadwiki.1"
      man.install "deadwiki.1"
    end
  end
end

