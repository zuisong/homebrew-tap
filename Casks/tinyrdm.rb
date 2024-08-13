cask "tinyrdm" do
  arch arm: "arm64", intel: "intel"

  version "1.2.0"
  sha256 arm:   "fe49f825649af037b16e8aae3858a10489c28721d6b8aad96b863001513e06d8",
         intel: "f49d1a707819eecd00b67cf550d7a9906fad2222c9b1d24f3ab85a24177cb905"

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
