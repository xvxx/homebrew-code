#!/usr/bin/env ruby

if ARGV.length < 1
    STDERR.puts "pass path to Cargo.toml"
    exit
end
cargo = File.read File.expand_path ARGV[0]
version = ENV['VERSION'].to_s
if version.empty?
    STDERR.puts "Set VERSION=vX.X.X"
    exit
end

name = cargo[/name = "(.+)"/, 1]
description = cargo[/description = "(.+)"/, 1]
url = cargo[/repository = "(.+)"/, 1]

def download!(name, file)
  `wget https://github.com/xvxx/#{name}/releases/download/#{file}`
end

mac_pkg = "#{version}/#{name}-#{version}-macos.zip"
download!(name, mac_pkg)
mac_sha256 = `shasum -a 256 #{File.basename mac_pkg}`.split(' ')[0]

linux_pkg = "#{version}/#{name}-#{version}-linux-x86_64.tgz"
download!(name, linux_pkg)
linux_sha256 = `shasum -a 256 #{File.basename linux_pkg}`.split(' ')[0]

class_name = name[0].upcase + name[1..]

puts DATA.read
  .gsub("{name}", name)
  .gsub("{description}", description)
  .gsub("{url}", url)
  .gsub("{version}", version)
  .gsub("{class-name}", class_name)
  .gsub("{linux-sha256}", linux_sha256)
  .gsub("{mac-sha256}", mac_sha256)

__END__
class {class-name} < Formula
  desc "{description}"
  homepage "{url}"
  version "{version}"
  bottle :unneeded

  if OS.mac?
    url "{url}/releases/download/{version}/{name}-{version}-macos.zip"
    sha256 "{mac-sha256}"
  elsif OS.linux?
    url "{url}/releases/download/{version}/{name}-{version}-linux-x86_64.tgz"
    sha256 "{linux-sha256}"
  end

  def install
    bin.install "{name}"
    if File.exists? "{name}.1"
      man.install "{name}.1"
    end
  end
end

