class Phd < Formula
  desc "an esoteric gopher server"
  homepage "https://github.com/xvxx/phd"
  version "v0.1.13"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phd/releases/download/v0.1.13/phd-v0.1.13-macos.zip"
    sha256 "a7ce252b49e1c7b8172c24ae9ad0fb2ce849db2b0f8e7d045aa370c4f78d48e7"
  elsif OS.linux?
    url "https://github.com/xvxx/phd/releases/download/v0.1.13/phd-v0.1.13-linux-x86_64.tgz"
    sha256 "49393f290827abab0b53126e2fd6b59170da7132d94af05ffb8c1c2650c6b827"
  end

  def install
    bin.install "phd"
    if File.exists? "phd.1"
      man.install "phd.1"
    end
  end
end

