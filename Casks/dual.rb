cask "dual" do
  arch arm: "apple-silicon", intel: "intel"

  version "1.2.4-beta.1,29"
  sha256 arm:   "f2f66884f8796c84f61d9fa410985ef4b1c5f8ab53f5ea5c5a820584beb74ec0",
         intel: "5f67c8cb30f9917812f94fe9a1fe174d320a00c329bdc84f743daa4dc33cacd2"

  url "https://github.com/helson-lin/Dual/releases/download/v#{version.csv.first}/Dual-#{version.csv.first}-#{version.csv.second}-macos-#{arch}.dmg",
      verified: "github.com/helson-lin/Dual/"
  name "Dual"
  desc "Clone macOS app bundles with a new name and bundle identifier"
  homepage "https://github.com/helson-lin/Dual"

  depends_on macos: ">= :monterey"

  app "Dual.app"

end
