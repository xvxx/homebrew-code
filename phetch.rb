class Phetch < Formula
  desc "quick lil gopher client"
  homepage "https://github.com/xvxx/phetch"
  version "v1.0.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/phetch/releases/download/v1.0.6/phetch-v1.0.6-macos.zip"
    sha256 "fbd29b927f0f6f6a87124b58e83fec99014818620709f55661ad8f236babbd60"
  elsif OS.linux?
    url "https://github.com/xvxx/phetch/releases/download/v1.0.6/phetch-v1.0.6-linux-x86_64.tgz"
    sha256 "9d0379810acca61c76dd55a6751f66e1b989b23d4ad4388a3552658b67e69390"
  end

  def install
    bin.install "phetch"
    if File.exists? "phetch.1"
      man.install "phetch.1"
    end
  end
end

