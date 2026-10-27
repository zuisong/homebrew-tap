cask "flclash" do
  version "0.9.2"
  sha256 "216f71773b70941afe3f6d1df6f21df05810e109bb8075f44560a0349e66e0d2"

  url "https://github.com/chen08209/FlClash/releases/download/v#{version}/FlClash-#{version}-macos-arm64.dmg"
  name "FlClash"
  desc "Proxy client based on ClashMeta"
  homepage "https://github.com/chen08209/FlClash"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "FlClash.app"

  zap trash: [
    "~/Library/Application Support/com.follow.clash/",
    "~/Library/Preferences/com.follow.clash.plist",
    "~/Library/Saved Application State/com.follow.clash.savedState/",
  ]
end
