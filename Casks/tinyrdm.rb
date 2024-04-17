cask "tinyrdm" do
  arch arm: "arm64", intel: "intel"

  version "1.1.11"
  sha256 arm:   "fce18891805cb260c84c875f5fd685a9b878f2ceff51d2a8325ab6ebde189a17",
         intel: "4f49c9f59a3ea6c3db1f4b30d4001e65bd46c89ce6d5099103d0e4f2e3e6824a"

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
