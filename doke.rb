class Doke < Formula
  desc "A Docker container CLI tool built with Go"
  homepage "https://github.com/helson-lin/doke"
  url "https://github.com/helson-lin/doke/releases/download/v1.0.0/doke_0.0.1_darwin_amd64.tar.gz"
  sha256 "your-sha256-checksum"
  version "1.0.0"

  def install
    bin.install "doke"
  end

  test do
    system "#{bin}/doke", "version"
  end
end
