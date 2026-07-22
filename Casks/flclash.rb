cask "flclash" do
  version "0.8.94"
  sha256 "3acab87eacb1f209afd873f9d85cbdbabd88ee59a935f9ecde9222b08f74fd79"

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
