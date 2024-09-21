cask "clash-nyanpasu" do
  arch arm: "aarch64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "bcee837286a58eb786230115d53a0f69448b22cc126621b811cb147f98f03034",
         intel: "a4d4ff4e9fbe7ab1a73e151451f0b8b599dd97702e9d5706bb08c2d962bceeac"

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
