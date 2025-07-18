class Of < Formula
  desc "Open file or directory in file manager from terminal"
  homepage "https://github.com/helson-lin/of"
  version "v0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/helson-lin/of/releases/download/v0.0.1/of-v0.0.1-darwin-arm64.tar.gz"
      sha256 "9945f58ca389eb3bc643804a4feae2e4d4aa5ef7437607d5f1145a367d792024"
    else
      url "https://github.com/helson-lin/of/releases/download/v0.0.1/of-v0.0.1-darwin-amd64.tar.gz"
      sha256 "91bc991d54395ac6454788fba17187ea513bf9c5b966765799f4b6b8ac483bdb"
    end
  end

  def install
    bin.install "of"
  end

  test do
    system "#{bin}/of", "--version"
  end
end
