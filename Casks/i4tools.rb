cask "i4tools" do
  version "1.15.009,20220714"
  sha256 "3af74916d89ef5d4871e8b0991d2f8cde421e9a75484c799894da8fb41d9005c"

  url "https://d-updater.i4.cn/i4mac/#{version.csv.second}/0/i4Tools_v#{version.csv.first}.dmg"
  name "i4Tools"
  name "爱思助手"
  desc "Mobile device management software"
  homepage "https://www.i4.cn/"

  livecheck do
    url "https://url.i4.cn/fqIBBbaa"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/i4mac/([\d.]+)/.+/i4Tools_v([.\d]+)\.dmg}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true

  pkg "i4tools.pkg"

  uninstall quit:    "cn.i4tools.mac",
            pkgutil: "cn.i4tools.mac"

  zap trash: [
    "~/Library/Application Support/i4Airplayer/",
    "~/Library/Application Support/i4Tools/",
    "~/Library/Preferences/cn.i4tools.mac.plist",
    "~/Library/Preferences/org.example.i4AirPlayer.plist",
    "~/Library/Saved Application State/org.example.i4AirPlayer.savedState",
  ]
end
