cask "tinyrdm" do
  arch arm: "arm64", intel: "intel"

  version "1.1.12"
  sha256 arm:   "2d452d3db4944bd231b431e25f2b88735018f7fd6453b69eac39429191cdb5cb",
         intel: "29239cff4856fbab1de1d02f503ec49e0ceb1d689cc8b4b59195f557c57fd6f4"

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
