class Doke < Formula
  desc "A Docker container CLI tool built with Go"
  homepage "https://github.com/helson-lin/doke"
  version "v0.0.1"

  if Hardware::CPU.arm?
    url "https://github.com/helson-lin/doke/releases/download/v0.0.1/doke-v0.0.1-darwin-arm64.tar.gz"
    sha256 "29292a32d45222dfed7a0f9d8ff0d38f4756d3b32813e40b80abfeb42450f01e" # 替换为实际的 arm64 SHA-256 值
  elsif Hardware::CPU.intel?
    url "https://github.com/helson-lin/doke/releases/download/v0.0.1/doke-v0.0.1-darwin-amd64.tar.gz"
    sha256 "fbf1a0a50569d627e5bafb54a379140ad6a90c64472787458da9ccb40fbc5111" # 替换为实际的 x86_64 SHA-256 值
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
