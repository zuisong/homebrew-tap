cask "tinyrdm" do
  arch arm: "arm64", intel: "intel"

  version "1.1.10"
  sha256 arm:   "ac3f5955898163ae29758e04704531a03e3e947fb5f0b422e9397ed1a42cb341",
         intel: "96234707917b808a86635432e71eec3fe6568df6d1a5857092e1b6a0986aa49d"

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
