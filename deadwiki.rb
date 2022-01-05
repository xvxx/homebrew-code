class Deadwiki < Formula
  desc "dead simple personal wiki"
  homepage "https://github.com/xvxx/deadwiki"
  version "v0.1.27"

  if OS.mac?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.27/deadwiki-v0.1.27-macos.zip"
    sha256 "007692b0c9dd84e91bf81c637e1445c65fabcaead90d2e640c65fa1a72b246f6"
  elsif OS.linux?
    url "https://github.com/xvxx/deadwiki/releases/download/v0.1.27/deadwiki-v0.1.27-linux-x86_64.tgz"
    sha256 "bbe9bf3500ceec315051fed0eef8930d47bff7b985f04879a291b008077e2b92"
  end

  def install
    bin.install "dead"
    if File.exists? "deadwiki.1"
      man.install "deadwiki.1"
    end
  end
end

