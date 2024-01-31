cask "i4tools" do
  version "3.02.001,20231222,0"
  sha256 "6ba01e819522c9565b8100a51890d5729e8a56229919e31281648b5416513e2a"

  url "https://d-updater.i4.cn/i4mac/#{version.csv.second}/#{version.csv.third}/i4Tools_v#{version.csv.first}.dmg"
  name "i4Tools"
  name "爱思助手"
  desc "Mobile device management software"
  homepage "https://www.i4.cn/"

  livecheck do
    url "https://url.i4.cn/fqIBBbaa"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/i4mac/([\d.]+)/(\d)/i4Tools_v([.\d]+)\.dmg}i)
      next if match.blank?

      "#{match[3]},#{match[1]},#{match[2]}"
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
