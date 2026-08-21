cask "flclash" do
  version "0.8.96"
  sha256 "f0d3d6f4d381ec2a9c05850b076b51ea796d335296ba1aa56388d105ec0d90c0"

  url "https://github.com/chen08209/FlClash/releases/download/v#{version}/FlClash-#{version}-macos-arm64.dmg"
  name "FlClash"
  desc "Proxy client based on ClashMeta"
  homepage "https://github.com/chen08209/FlClash"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "flclash.app"

  zap trash: [
    "~/Library/Application Support/com.follow.clash/",
    "~/Library/Preferences/com.follow.clash.plist",
    "~/Library/Saved Application State/com.follow.clash.savedState/",
  ]
end
