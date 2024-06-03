cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "1.6.4"
  sha256 arm:   "bfc0752e70c951890d912837929392979de1a628cfa1ca1536f6b1ef8f4ba852",
         intel: "6ff12a8a1970ad65fb8ce38e5f5ba97880526d49f7f04eeb000ad8e09103df5f"

  url "https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg",
      verified: "github.com/clash-verge-rev/clash-verge-rev/"
  name "Clash Verge Rev"
  desc "Continuation of Clash Verge - A Clash Meta GUI based on Tauri"
  homepage "https://clash-verge-rev.github.io/"

  depends_on macos: ">= :big_sur"

  app "Clash Verge.app"

  zap trash: [
    "~/Library/Application Support/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Caches/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/WebKit/io.github.clash-verge-rev.clash-verge-rev",
  ]
end
