cask "tinyrdm" do
  arch arm: "arm64", intel: "intel"

  version "1.2.2"
  sha256 arm:   "19a3b331d32fca73ef1e8c85044101d4574e2c553cca46dcf7bf953e84bc250f",
         intel: "3e974974b1b3f37e92a0c6d113a063e4b08f7013fc024994ac7ae4de41a18b7d"

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
