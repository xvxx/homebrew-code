class Phd < Formula
  desc "an esoteric gopher server"
  homepage "https://github.com/xvxx/phd"
  version "v0.1.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phd/releases/download/v0.1.7/phd-v0.1.7-macos.zip"
    sha256 "e874958fbed3adc639dc2ac0bad0d9ee5b65ae567d895dd155129e9d8e425b36"
  elsif OS.linux?
    url "https://github.com/xvxx/phd/releases/download/v0.1.7/phd-v0.1.7-linux-x86_64.tgz"
    sha256 "1e628b414f12f76d63b5769f96b0702acf542a4837848412ec87ef7ce15c5e82"
  end

  def install
    bin.install "phd"
    if File.exists? "phd.1"
      man.install "phd.1"
    end
  end
end

