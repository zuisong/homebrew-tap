cask "tinyrdm" do
  arch arm: "arm64", intel: "intel"

  version "1.2.5"
  sha256 arm:   "0918611c8a96dbbda5a8e59c4c810659bca5033d82f780df865d4d1dfed25b8a",
         intel: "4415ff1bb28603c2bd18b57700ef6f515098bfd0d6b9b61f5aaccadc378a3c33"

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
