class Of < Formula
  desc "Open file or directory in file manager from terminal"
  homepage "https://github.com/helson-lin/of"
  version "v0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/helson-lin/of/releases/download/v0.0.1/of-v0.0.1-darwin-arm64.tar.gz"
      sha256 "ab9d3c6df67b20cb1795abc9a196fc4f3a48f59984386f76c22b5cb6b211425f"
    else
      url "https://github.com/helson-lin/of/releases/download/v0.0.1/of-v0.0.1-darwin-amd64.tar.gz"
      sha256 "18a6697ca6ed145399c52e637bafe78a4b1ee23a498d66008450d45a72f03dd6"
    end
  end

  def install
    bin.install "of"
  end

  test do
    system "#{bin}/of", "--version"
  end
end
