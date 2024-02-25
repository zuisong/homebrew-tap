cask "tinyrdm" do
  arch arm: "arm64", intel: "intel"

  version "1.1.9"
  sha256 arm:   "1b4720c2f494a24feff902856168da8ba97c71d7d4164d62de9f921d44a5268e",
         intel: "ed91e52ab31f294e70bff1bc8cfe2e5d5747fabba0dcba7acbb911ca491e65f3"

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
