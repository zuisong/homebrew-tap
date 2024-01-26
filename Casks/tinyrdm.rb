cask "tinyrdm" do
  arch arm: "arm64", intel: "intel"

  version "1.1.8"
  sha256 arm:   "8ba46ff88686098effb5528866c67231935b3151b2724c5ef567a1d6279bbf1f",
         intel: "0c085460e99245c4b123f23bc1c9429dd18d8028955229b50cb0c6d7309d4b9c"

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
