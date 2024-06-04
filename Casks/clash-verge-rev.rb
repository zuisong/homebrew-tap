cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "1.6.5"
  sha256 arm:   "911a1797d2762fb59e75d35a9798cd69ad1749d6200898d55adbc5deef1d271e",
         intel: "98642ee60bb6b9e2944432d333a22598f2cff8ed1cf67d1cb5d87c94b94cd299"

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
