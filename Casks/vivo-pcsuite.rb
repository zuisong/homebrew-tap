cask "vivo-pcsuite" do
  version "5.2.0-arm64_1728461732507"
  sha256 "8b97c610f8b943dc31b67aa877fb5974d539f31cac0ea1b83ce0cb2cfb6193f9"

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
