cask "flclash" do
  version "0.8.86"
  sha256 "9921b38cf6bf9d2c22893bb748f792c6932339a7906d8db51f0c50bd9f61e8fa"

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
