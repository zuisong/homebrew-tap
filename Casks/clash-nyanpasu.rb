cask "clash-nyanpasu" do
  arch arm: "aarch64", intel: "x64"

  version "1.5.1"
  sha256 arm:   "641eb52f967c6df140b9a9c0627eb278785afa07cbe23e9fbbefb0de712ad324",
         intel: "f2459742d58cb2f991fe3f396728c8c1879a072212a706af9e2a7cbea6fae3a5"

  url "https://github.com/LibNyanpasu/clash-nyanpasu/releases/download/v#{version}/Clash.Nyanpasu_#{version}_#{arch}.dmg"
  name "clash-nyanpasu"
  desc "Clash GUI based on Tauri"
  homepage "https://github.com/LibNyanpasu/clash-nyanpasu"

  app "Clash Nyanpasu.app"

  zap trash: [
    "~/Library/Application Support/clash-nyanpasu",
    "~/Library/Caches/moe.elaina.clash.nyanpasu/",
    "~/Library/Saved Application State/moe.elaina.clash.nyanpasu.savedState/",
    "~/Library/WebKit/moe.elaina.clash.nyanpasu/",
  ]
end
