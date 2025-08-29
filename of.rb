class Of < Formula
  desc "Open file or directory in file manager from terminal"
  homepage "https://github.com/helson-lin/of"
  version "v0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/helson-lin/of/releases/download/v0.0.2/of-v0.0.2-darwin-arm64.tar.gz"
      sha256 "4143e8b0f0e8b5f4fe5711932338c30dd6aef423d0757e03f7e88ff99c45ec63"
    else
      url "https://github.com/helson-lin/of/releases/download/v0.0.2/of-v0.0.2-darwin-amd64.tar.gz"
      sha256 "aa7eedf855f108ae73a068e7585c30adf2cf23f5339253c7e5d0eddda86fd92d"
    end
  end

  def install
    bin.install "of"
  end

  test do
    system "#{bin}/of", "--version"
  end
end
