cask "i4tools" do
  version "3.21.002,20250722,0"
  sha256 "da787396fa948c71858be9ac580e343bc26908226e2079e51a5e40acde62137b"

  url "https://d-app6.i4.cn/i4tools/mac/#{version.csv.second}/#{version.csv.third}/i4Tools_v#{version.csv.first}.dmg"
  name "i4Tools"
  name "爱思助手"
  desc "Mobile device management software"
  homepage "https://www.i4.cn/"

  livecheck do
    url "https://url.i4.cn/fqIBBbaa"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/([\d.]+)/(\d)/i4Tools[\D]+([.\d]+)\.dmg}i)
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
