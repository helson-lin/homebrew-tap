cask "dual" do
  arch arm: "apple-silicon", intel: "intel"

  version "1.2.4,30"
  sha256 arm:   "b698d74277398387f833baa4260ecc6a9bee37b9c6c7e9cd9d1006f7b1024c67",
         intel: "e85c0bedfc94667360871b2ab86758f719567183b42638cf3add45ecce3fd943"

  url "https://github.com/helson-lin/Dual/releases/download/v#{version.csv.first}/Dual-#{version.csv.first}-#{version.csv.second}-macos-#{arch}.dmg",
      verified: "github.com/helson-lin/Dual/"
  name "Dual"
  desc "Clone macOS app bundles with a new name and bundle identifier"
  homepage "https://github.com/helson-lin/Dual"

  depends_on macos: ">= :monterey"

  app "Dual.app"

end
