cask "dual" do
  arch arm: "apple-silicon", intel: "intel"

  version "1.2.2-beta,17"
  sha256 arm:   "f3a2aa2edc7bca1bbd94c9191d9bff59a6ee87557792b1da6400efcbe7a259d0",
         intel: "bc660f4ab41430b69daf161b33f9f7e99302aedb2015ac7bf8a8b2c60b8939a0"

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
