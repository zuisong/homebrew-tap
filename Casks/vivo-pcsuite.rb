cask "vivo-pcsuite" do
  version "3.6.9-arm64_1722829441318"
  sha256 "d6507b20cc2bd0e33d3f07f36c9f37c0401ef8c6590a0d1b69a658a6f61ecae2"

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
