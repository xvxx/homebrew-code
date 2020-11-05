class Deadwiki < Formula
  desc "dead simple personal wiki"
  homepage "https://github.com/xvxx/deadwiki"
  version "v0.1.24"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.24/deadwiki-v0.1.24-macos.zip"
    sha256 "1fcc2b29d46db4809ecbe785b58183685e05698a7558364e9fa349348b40151e"
  elsif OS.linux?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.24/deadwiki-v0.1.24-linux-x86_64.tgz"
    sha256 "b2845384b7091d994f95001833e3968a68c363321394e7f7f97374768137ce00"
  end

  def install
    bin.install "deadwiki"
    if File.exists? "deadwiki.1"
      man.install "deadwiki.1"
    end
  end
end

