cask "dual" do
  arch arm: "apple-silicon", intel: "intel"

  version "1.2.7,33"
  sha256 arm:   "0e742508be5d9166833c26036372b11b01d96c415c3d63311fd126e68d0a6539",
         intel: "d013d58eda4519254d48a0e8e53003f5718131eaf0e747832bf2fb8168f0477d"

  url "https://github.com/helson-lin/Dual/releases/download/v#{version.csv.first}/Dual-#{version.csv.first}-#{version.csv.second}-macos-#{arch}.dmg",
      verified: "github.com/helson-lin/Dual/"
  name "Dual"
  desc "Clone macOS app bundles with a new name and bundle identifier"
  homepage "https://github.com/helson-lin/Dual"

  depends_on macos: ">= :monterey"

  app "Dual.app"

end
