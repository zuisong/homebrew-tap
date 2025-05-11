cask "vivo-pcsuite" do
  version "5.5.1-arm64_1745235662595"
  sha256 "c57dec572136772da8a6d7c47089e07b86aec2f967a35b7ed725154fd63d88cc"

  url "https://pcsuite-api-static.vivo.com/upgrade-pre/pcsuite-#{version}.pkg"
  name "vivo-pcsuite"
  desc "PC Suite for vivo"
  homepage "https://pc.vivo.com/"

  livecheck do
    url "https://pcsuite-api.vivo.com/version/download/mac/full?chip=1"
    regex(/pcsuite-(\d.+).pkg/i)
    strategy :header_match
  end

  auto_updates true

  pkg "pcsuite-#{version}.pkg"

  uninstall pkgutil: "com.vivo.pcsuite"

  zap trash: [
    "~/Library/Application Support/Caches/pcsuite-updater/",
    "~/Library/Application Support/pcsuite/",
    "~/Library/Caches/com.vivo.pcsuite.ShipIt/",
    "~/Library/Caches/com.vivo.pcsuite/",
    "~/Library/Preferences/com.vivo.pcsuite.plist",
    "~/Library/Saved Application State/com.vivo.pcsuite.savedState/",
  ]
end
