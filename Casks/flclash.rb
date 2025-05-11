cask "flclash" do
  version "0.8.84"
  sha256 "1029f3afe4c2c614ac9f461556ffccb353550a7e840ed379bfb3743e11d9732d"

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
