class Hui < Formula
  desc "Markdown to PNG/PDF/HTML converter with multi-theme support"
  homepage "https://github.com/helson-lin/hui"
  version "v1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/helson-lin/hui/releases/download/v1.0.1/hui-v1.0.1-darwin-arm64.tar.gz"
      sha256 "9d817fbecbe4651c5b400f0c8a43419d5f19f2cb2e9e2dff8cfcb51215dc02a9"
    else
      url "https://github.com/helson-lin/hui/releases/download/v1.0.1/hui-v1.0.1-darwin-amd64.tar.gz"
      sha256 "41c4131c184638e7b429b52cf007b598f239e271fc3bf451e5825fb2bdb45a53"
    end
  end

  def install
    bin.install "hui"
    # pkg binaries built on Linux lack a valid macOS code signature.
    # Unsigned arm64 executables are SIGKILL'd by the kernel (zsh: killed).
    return unless OS.mac?

    system "xattr", "-cr", bin/"hui"
    system "codesign", "--force", "--sign", "-", bin/"hui"
  end

  def caveats
    <<~EOS
      HTML export works out of the box.

      PNG / PDF need Google Chrome or Chromium installed on the system.
      Optional override:
        export HUI_CHROME_PATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

      If you still see "zsh: killed", re-sign the binary:
        codesign --force --sign - "$(brew --prefix)/bin/hui"
        xattr -cr "$(brew --prefix)/bin/hui"
    EOS
  end

  test do
    system "#{bin}/hui", "--version"
  end
end
