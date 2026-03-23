cask "tinyrdm" do
  arch arm: "arm64", intel: "intel"

  version "1.2.6"
  sha256 arm:   "6a9de72ebb6be5b4fce1ebec3186edf8bd1ed5e3221bede082479c6ffe03a61b",
         intel: "ac69281ec7d943d9e315a87c152a02ccca3da4cbf030c55db53f2504aa3f7898"

  url "https://github.com/tiny-craft/tiny-rdm/releases/download/v#{version}/TinyRDM_#{version}_mac_#{arch}.dmg"
  name "tinyrdm"
  desc "Modern Redis Desktop Manager"
  homepage "https://github.com/tiny-craft/tiny-rdm"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Tiny RDM.app"

  zap trash: [
    "~/Library/Caches/com.tinycraft.tinyrdm/",
    "~/Library/Preferences/com.tinycraft.tinyrdm.plist",
    "~/Library/Preferences/TinyRDM/",
    "~/Library/Saved Application State/com.tinycraft.tinyrdm.savedState/",
  ]
end
