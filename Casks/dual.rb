cask "dual" do
  arch arm: "apple-silicon", intel: "intel"

  version "1.2.2,19"
  sha256 arm:   "43c2ad68665ed78571f37b2ac3b7d0adbd746fb08585401c4a5b248a8cf5791e",
         intel: "71a41c706f80d681cc566f06c5a77ab09298d39d7ccf676ab3c6c77f11ef5b87"

  url "https://github.com/helson-lin/Dual/releases/download/v#{version.csv.first}/Dual-#{version.csv.first}-#{version.csv.second}-macos-#{arch}.dmg",
      verified: "github.com/helson-lin/Dual/"
  name "Dual"
  desc "Clone macOS app bundles with a new name and bundle identifier"
  homepage "https://github.com/helson-lin/Dual"

  depends_on macos: ">= :monterey"

  app "Dual.app"

  caveats do
    <<~EOS
      Dual is currently distributed as an unsigned, unnotarized test build.

      If macOS blocks the app after installation, remove the quarantine flag:
        xattr -cr /Applications/Dual.app

      If the app still cannot be opened, apply a local ad-hoc signature:
        codesign --force --deep --sign - /Applications/Dual.app
    EOS
  end
end
