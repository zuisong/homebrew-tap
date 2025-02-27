cask "flclash" do
  version "0.8.76"
  sha256 "49368f2c8248985d844b77d7570b1e7c0bf3814c2938dfcef8392697c69cb80a"

  url "https://github.com/chen08209/FlClash/releases/download/v#{version}/FlClash-#{version}-macos-arm64.dmg"
  name "FlClash"
  desc "Proxy client based on ClashMeta"
  homepage "https://github.com/chen08209/FlClash"

  app "flclash.app"

  zap trash: [
    "~/Library/Application Support/com.follow.clash/",
    "~/Library/Preferences/com.follow.clash.plist",
    "~/Library/Saved Application State/com.follow.clash.savedState/",
  ]
end
