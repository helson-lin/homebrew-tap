class Doke < Formula
  desc "A Docker container CLI tool built with Go"
  homepage "https://github.com/helson-lin/doke"
  version "v0.0.4-beta"

  if Hardware::CPU.arm?
    url "https://github.com/helson-lin/doke/releases/download/v0.0.4-beta/doke-v0.0.4-beta-darwin-arm64.tar.gz"
    sha256 "e85194b49cfaea51e071d056cd90d708c2a418dec48196f2b37a0b0ed0c09656" # 替换为实际的 arm64 SHA-256 值
  elsif Hardware::CPU.intel?
    url "https://github.com/helson-lin/doke/releases/download/v0.0.4-beta/doke-v0.0.4-beta-darwin-arm64.tar.gz"
    sha256 "2703a59566d220113b417d44bc297df7f63af4ce12affd3d4905587736d4d5d9" # 替换为实际的 x86_64 SHA-256 值
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
