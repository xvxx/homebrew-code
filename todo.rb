class Todo < Formula
  desc "dirt simple todos cli"
  homepage "https://github.com/xvxx/ldpl-todo/"
  version "1.0.0"

  if OS.mac?
    url "https://github.com/xvxx/ldpl-todo/releases/download/v1.0.1/todo-v1.0.1-macos.zip"
    sha256 "30ce1e510275e923fc69fa271a48c44d0e56adf44ce0ba55cbe0c211926cbb90"
  elsif OS.linux?
    url "https://github.com/xvxx/ldpl-todo/releases/download/v1.0.1/todo-v1.0.1-linux-x86_64.tar.gz"
    sha256 "b45c7145f6d617a44c80cadbc3074f496679b9ed2d11d6e63e133ab66c021a50"
  end

  def install
    bin.install "todo"
  end
end
