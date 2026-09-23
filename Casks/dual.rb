cask "dual" do
  arch arm: "apple-silicon", intel: "intel"

  version "1.2.3-beta.9,28"
  sha256 arm:   "b8a9b3de483291c9377ca43693bf1553877666b4a33746f96244648d6e011310",
         intel: "b4d1546708219ecdcee6f99c660271d74ed7f39e71e44b259f95fb5a56f59b3d"

  url "https://github.com/helson-lin/Dual/releases/download/v#{version.csv.first}/Dual-#{version.csv.first}-#{version.csv.second}-macos-#{arch}.dmg",
      verified: "github.com/helson-lin/Dual/"
  name "Dual"
  desc "Clone macOS app bundles with a new name and bundle identifier"
  homepage "https://github.com/helson-lin/Dual"

  depends_on macos: ">= :monterey"

  app "Dual.app"

end
