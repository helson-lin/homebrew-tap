cask "dual" do
  arch arm: "apple-silicon", intel: "intel"

  version "1.2.6,32"
  sha256 arm:   "48063cb7cb28222482a1c9414a7082c338c3ba8680240981e8c95d77df7d3f6c",
         intel: "dd4671b4ed26f708a1485373aad0056d9b1dd2ea215ae7f7c0c0b43867f628f1"

  url "https://github.com/helson-lin/Dual/releases/download/v#{version.csv.first}/Dual-#{version.csv.first}-#{version.csv.second}-macos-#{arch}.dmg",
      verified: "github.com/helson-lin/Dual/"
  name "Dual"
  desc "Clone macOS app bundles with a new name and bundle identifier"
  homepage "https://github.com/helson-lin/Dual"

  depends_on macos: ">= :monterey"

  app "Dual.app"

end
