class Of < Formula
  desc "Open file or directory in file manager from terminal"
  homepage "https://github.com/helson-lin/of"
  version "v0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/helson-lin/of/releases/download/v0.0.1/of-v0.0.1-darwin-arm64.tar.gz"
      sha256 "placeholder_arm"
    else
      url "https://github.com/helson-lin/of/releases/download/v0.0.1/of-v0.0.1-darwin-amd64.tar.gz"
      sha256 "placeholder_intel"
    end
  end

  def install
    bin.install "of"
  end

  test do
    system "#{bin}/of", "--version"
  end
end
