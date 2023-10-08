cask "clash-verge" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.7"
  sha256 arm:   "dbf2b5cbb75e833a6e1b6e57c448afc8b03ec60937fcf79766b4697ed7fdf1c2",
         intel: "f9c63c38fbbcabb385f0a073813577a9c3eba7134926b381c2f129ec40e578ff"

  url "https://github.com/zzzgydi/clash-verge/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg"
  name "Clash for Windows"
  desc "Cross-Platform Clash GUI based on tauri"
  homepage "https://github.com/zzzgydi/clash-verge"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash Verge.app"

  zap trash: [
    "~/.config/clash-verge",
    "~/Library/Preferences/top.gydi.clashverge.plist",
    "~/Library/Saved Application State/top.gydi.clashverge.savedState",
  ]

  caveats <<~EOS
    On macOS Catalina, you may get a warning that "the developer cannot be
    verified". This check can be disabled in the "Security & Privacy"
    preferences pane or by running the following command:
      xattr -r -d com.apple.quarantine "/Applications/Clash Verge.app"
  EOS
end
