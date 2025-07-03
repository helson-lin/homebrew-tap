class Doke < Formula
  desc "A Docker container CLI tool built with Go"
  homepage "https://github.com/helson-lin/doke"
  version "v0.0.3"

  if Hardware::CPU.arm?
    url "https://github.com/helson-lin/doke/releases/download/v0.0.3/doke-v0.0.3-darwin-arm64.tar.gz"
    sha256 "833a0635e88c0c3fbce5455640c912a7ed10bc603c7b710bbffdb99c85c1aede" # 替换为实际的 arm64 SHA-256 值
  elsif Hardware::CPU.intel?
    url "https://github.com/helson-lin/doke/releases/download/v0.0.3/doke-v0.0.3-darwin-arm64.tar.gz"
    sha256 "226ddf608002cf08f9c23c7169491e3d944da6d33b179e128cfcae8642811a10" # 替换为实际的 x86_64 SHA-256 值
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
