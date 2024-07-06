cask "tinyrdm" do
  arch arm: "arm64", intel: "intel"

  version "1.1.14"
  sha256 arm:   "43796a2f18af672c667f5af573d13ee21fa5d889a2c559373b5256096bd8f86f",
         intel: "3a8a0e438655ebb65277bcbf478300fb19eda2652d1ee037bb5e31c9026cdaf5"

  url "https://github.com/tiny-craft/tiny-rdm/releases/download/v#{version}/TinyRDM_#{version}_mac_#{arch}.dmg"
  name "tinyrdm"
  desc "Modern Redis Desktop Manager"
  homepage "https://github.com/tiny-craft/tiny-rdm"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tiny RDM.app"

  zap trash: [
    "~/Library/Caches/com.tinycraft.tinyrdm/",
    "~/Library/Preferences/com.tinycraft.tinyrdm.plist",
    "~/Library/Preferences/TinyRDM/",
    "~/Library/Saved Application State/com.tinycraft.tinyrdm.savedState/",
  ]
end
