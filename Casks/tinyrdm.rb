cask "tinyrdm" do
  arch arm: "arm64", intel: "intel"

  version "1.1.13"
  sha256 arm:   "3341eac8de33302676421b31f6bd85936bc2493a0e8d56450695dbc46afaa967",
         intel: "09faca5da53fbc090cb154bb47788de7bcd361f3b7ff9bef20a90f03316a17f9"

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
