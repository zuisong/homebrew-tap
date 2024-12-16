cask "clashx-meta" do
  version "1.4.6"
  sha256 "2616954f50983a742a517d46eafb941a47ba45d944d2b8e39ad68fa0a9cc1f79"

  url "https://github.com/MetaCubeX/ClashX.Meta/releases/download/v#{version}/ClashX.Meta.zip"
  name "ClashX Meta"
  desc "Rule-based custom proxy with GUI based on Clash.Meta"
  homepage "https://github.com/MetaCubeX/ClashX.Meta"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ClashX Meta.app"

  uninstall launchctl: "com.metacubex.ClashX.ProxyConfigHelper",
            quit:      "com.metacubex.ClashX",
            delete:    [
              "/Library/LaunchDaemons/com.metacubex.ClashX.ProxyConfigHelper.plist",
              "/Library/PrivilegedHelperTools/com.metacubex.ClashX.ProxyConfigHelper",
            ]

  zap trash: [
    "~/Library/Application Support/com.metacubex.ClashX.meta",
    "~/Library/Caches/com.metacubex.ClashX.meta",
    "~/Library/Logs/ClashX Meta",
    "~/Library/Preferences/com.metacubex.ClashX.meta.plist",
  ]
end
