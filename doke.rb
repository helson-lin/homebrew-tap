class Doke < Formula
  desc "A Docker container CLI tool built with Go"
  homepage "https://github.com/helson-lin/doke"
  url "https://github.com/helson-lin/doke/releases/download/v0.0.1/doke-v0.0.1-darwin-amd64.tar.gz"
  sha256 ""
  version "v0.0.1"

  def install
    bin.install "doke"
  end

  test do
    system "#{bin}/doke", "version"
  end
end
