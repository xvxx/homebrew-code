class Phd < Formula
  desc "an esoteric gopher server"
  homepage "https://github.com/xvxx/phd"
  version "v0.1.14"

  if OS.mac?
    url "https://github.com/xvxx/phd/releases/download/v0.1.14/phd-v0.1.14-macos.zip"
    sha256 "1abd11595ea257db0bf3399dd5ed3ff4cb4fb557fdbc828aadbbfeb0231112bd"
  elsif OS.linux?
    url "https://github.com/xvxx/phd/releases/download/v0.1.14/phd-v0.1.14-linux-x86_64.tgz"
    sha256 "ff8c12173ce7c9908d5f459e1305032621fc30c7200121945544e97481cb546c"
  end

  def install
    bin.install "phd"
    if File.exists? "phd.1"
      man.install "phd.1"
    end
  end
end

