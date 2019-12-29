class Todo < Formula
  desc "dirt simple todos cli"
  homepage "https://github.com/dvkt/ldpl-todo/"
  version "1.0.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dvkt/todo/releases/download/v1.0.0/todo-v1.0.0-macos.zip"
    sha256 "f6b2e8c007b3cbd6143bab2fba2b32b44e63063800e3c48acef72f5cd32b8732"
  elsif OS.linux?
    url "https://github.com/dvkt/todo/releases/download/v1.0.0/todo-v1.0.0-linux-x86_64.tar.gz"
    sha256 "e80030a90b995a2e83532629c9988f4042a28d1bcbc561da11e1569f33b79380"
  end

  def install
    bin.install "todo"
  end
end
