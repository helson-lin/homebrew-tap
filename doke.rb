class Doke < Formula
  desc "A Docker container CLI tool built with Go"
  homepage "https://github.com/helson-lin/doke"
  version "v0.0.3-beta"

  if Hardware::CPU.arm?
    url "https://github.com/helson-lin/doke/releases/download/v0.0.3-beta/doke-v0.0.3-beta-darwin-arm64.tar.gz"
    sha256 "0fe09519db6db02a047daf83451b6c7f82d6c91f9048fe8cd32a72131838c20a" # 替换为实际的 arm64 SHA-256 值
  elsif Hardware::CPU.intel?
    url "https://github.com/helson-lin/doke/releases/download/v0.0.3-beta/doke-v0.0.3-beta-darwin-arm64.tar.gz"
    sha256 "0fe09519db6db02a047daf83451b6c7f82d6c91f9048fe8cd32a72131838c20a" # 替换为实际的 x86_64 SHA-256 值
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
