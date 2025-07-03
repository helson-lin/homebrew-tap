class Doke < Formula
  desc "A Docker container CLI tool built with Go"
  homepage "https://github.com/helson-lin/doke"
  version "v0.0.3"

  if Hardware::CPU.arm?
    url "https://github.com/helson-lin/doke/releases/download/v0.0.3/doke-v0.0.3-darwin-arm64.tar.gz"
    sha256 "706b8194515c64781b2de48aa8e04d517982b74fe92390e0c385ecd39b61e4c3" # 替换为实际的 arm64 SHA-256 值
  elsif Hardware::CPU.intel?
    url "https://github.com/helson-lin/doke/releases/download/v0.0.3/doke-v0.0.3-darwin-arm64.tar.gz"
    sha256 "f7930121271b611348323199ad93ac31bad21c55888b362b1fb773ede56db162" # 替换为实际的 x86_64 SHA-256 值
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
