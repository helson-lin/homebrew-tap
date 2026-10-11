cask "dual" do
  arch arm: "apple-silicon", intel: "intel"

  version "1.2.8,34"
  sha256 arm:   "104ce4cea45f2a8080f9dfc50dd236bf4ff90bb44f5922e16646a9112c5d9e74",
         intel: "b4b9bc42f90052c1b167c69d1b62f3d0c42fe7d35cf61d715baf4b8cdba89716"

  url "https://github.com/helson-lin/Dual/releases/download/v#{version.csv.first}/Dual-#{version.csv.first}-#{version.csv.second}-macos-#{arch}.dmg",
      verified: "github.com/helson-lin/Dual/"
  name "Dual"
  desc "Clone macOS app bundles with a new name and bundle identifier"
  homepage "https://github.com/helson-lin/Dual"

  depends_on macos: ">= :monterey"

  app "Dual.app"

end
