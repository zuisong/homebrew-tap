cask "tinyrdm" do
  arch arm: "arm64", intel: "intel"

  version "1.2.3"
  sha256 arm:   "ba7bdb29f2194533366199231c3f3971a3c128704070c53d6ee4ad78241e4140",
         intel: "adf1bda0b91bf8826c68b8ce9c5ae19de3b15af5ccfbdfe4009f678f3ed54962"

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
