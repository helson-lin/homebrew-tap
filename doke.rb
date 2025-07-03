class Doke < Formula
  desc "A Docker container CLI tool built with Go"
  homepage "https://github.com/helson-lin/doke"
  version "v0.0.2"

  if Hardware::CPU.arm?
    url "https://github.com/helson-lin/doke/releases/download/v0.0.2/doke-v0.0.2-darwin-arm64.tar.gz"
    sha256 "9b0c7c91d5aba919fbd62080eb5bdf71ce15cfa5794806dcc8abd8796e234b79" # 替换为实际的 arm64 SHA-256 值
  elsif Hardware::CPU.intel?
    url "https://github.com/helson-lin/doke/releases/download/v0.0.2/doke-v0.0.2-darwin-arm64.tar.gz"
    sha256 "9b0c7c91d5aba919fbd62080eb5bdf71ce15cfa5794806dcc8abd8796e234b79" # 替换为实际的 x86_64 SHA-256 值
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
