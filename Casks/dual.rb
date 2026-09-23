cask "dual" do
  arch arm: "apple-silicon", intel: "intel"

  version "1.2.5,31"
  sha256 arm:   "4ad5e1151509ad11b66bdbd7585a2ed0b4c027f9f0edf9cdbaeedb7aee861baa",
         intel: "189943364245f742553955c04c8c8bd8d898ea3e2650b7f0f4851c1da50ad539"

  url "https://github.com/helson-lin/Dual/releases/download/v#{version.csv.first}/Dual-#{version.csv.first}-#{version.csv.second}-macos-#{arch}.dmg",
      verified: "github.com/helson-lin/Dual/"
  name "Dual"
  desc "Clone macOS app bundles with a new name and bundle identifier"
  homepage "https://github.com/helson-lin/Dual"

  depends_on macos: ">= :monterey"

  app "Dual.app"

end
