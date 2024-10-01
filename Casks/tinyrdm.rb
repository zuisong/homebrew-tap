cask "tinyrdm" do
  arch arm: "arm64", intel: "intel"

  version "1.2.1"
  sha256 arm:   "c8991b482c967308a6362d1b37da46562c8b612a5fd0efecdc3ab71dd1f88948",
         intel: "2644d8110957ea29389ba96a08db39a555cbf99c8d186e76b1a6625a15180234"

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
