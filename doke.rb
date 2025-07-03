class Doke < Formula
  desc "A Docker container CLI tool built with Go"
  homepage "https://github.com/helson-lin/doke"
  version "v0.0.2"

  if Hardware::CPU.arm?
    url "https://github.com/helson-lin/doke/releases/download/v0.0.2/doke-v0.0.2-darwin-arm64.tar.gz"
    sha256 "cda74592758773b83602f3f09ced2ccd65e10ea1026cc068102ff1ddb13191b9" # 替换为实际的 arm64 SHA-256 值
  elsif Hardware::CPU.intel?
    url "https://github.com/helson-lin/doke/releases/download/v0.0.2/doke-v0.0.2-darwin-arm64.tar.gz"
    sha256 "0b3e95fc35c140bb7146d4ef02df3871d8d71610b3c1a5939c43f3b43f0d1465" # 替换为实际的 x86_64 SHA-256 值
  end

  def install
    Dir.glob("doke-*").each do |file|
      bin.install file => "doke"  # 将文件重命名为 doke
    end
  end

  test do
    system "#{bin}/doke", "version"
  end
end
