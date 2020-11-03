class Shy < Formula
  desc "bare-bones ssh launcher"
  homepage "https://github.com/xvxx/shy"
  version "v0.1.10"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xvxx/shy/releases/download/v0.1.10/shy-v0.1.10-macos.zip"
    sha256 "ee4be6f0dec32160562ccfb198cd646678fe445ce9a0fe78aced6106c1cc9441"
  elsif OS.linux?
    url "https://github.com/xvxx/shy/releases/download/v0.1.10/shy-v0.1.10-linux-x86_64.tgz"
    sha256 "f104a400cf3e598e91dc356572bd206085cddc18c8e2643eef067ebe1d8095e2"
  end

  def install
    bin.install "shy"
    if File.exists? "shy.1"
      man.install "shy.1"
    end
  end
end

