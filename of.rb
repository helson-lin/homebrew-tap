class Of < Formula
  desc "Open file or directory in file manager from terminal"
  homepage "https://github.com/helson-lin/of"
  version "v0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/helson-lin/of/releases/download/v0.0.1/of-v0.0.1-darwin-arm64.tar.gz"
      sha256 "ba5fd6eb337a482e81676424b580e643832a2dfc0e72dae826cd4a92a5fc5357"
    else
      url "https://github.com/helson-lin/of/releases/download/v0.0.1/of-v0.0.1-darwin-amd64.tar.gz"
      sha256 "fce46acb638da2283d627e4c9b6186ae49c1370f977bb626e654918fdbd802fe"
    end
  end

  def install
    bin.install "of"
  end

  test do
    system "#{bin}/of", "--version"
  end
end
