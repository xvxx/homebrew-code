class Phd < Formula
  desc "an esoteric gopher server"
  homepage "https://github.com/xvxx/phd"
  version "v0.1.15"

  if OS.mac?
    url "https://github.com/xvxx/phd/releases/download/v0.1.15/phd-v0.1.15-macos.zip"
    sha256 "38f9b7cfff555a46a5e030f35468c469ee7dcdcd1342ad4160c5383830765986"
  elsif OS.linux?
    url "https://github.com/xvxx/phd/releases/download/v0.1.15/phd-v0.1.15-linux-x86_64.tgz"
    sha256 "c080bab39111df3297ab3fe429b755bfbe586641409010086b4c47d11405d216"
  end

  def install
    bin.install "phd"
    if File.exists? "phd.1"
      man.install "phd.1"
    end
  end
end

