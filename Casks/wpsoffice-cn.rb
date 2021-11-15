cask "wpsoffice-cn" do
  version "3.9.4,6369"
  sha256 "5457136a0ee8ff0a4c1fbf506033f9b66d5c1bfd97bb93b09dc5139f89a8a424"

  url "http://package.mac.wpscdn.cn/mac_wps_pkg/#{version.before_comma}/WPS_Office_#{version.before_comma}(#{version.after_comma}).dmg",
      verified: "package.mac.wpscdn.cn"
  name "WPS Office"
  desc "All-in-one office suite"
  homepage "https://www.wps.cn/product/wpsmac/"

  livecheck do
    url "https://www.wps.cn/product/wpsmac/"
    strategy :page_match do |page|
      match = page.match(/WPS_Office_([.\d]+)\((\d+)\).dmg/)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "wpsoffice.app"

  uninstall quit: "com.kingsoft.wpsoffice.mac"

  zap trash: [
    "~/Library/Containers/com.kingsoft.wpsoffice.mac",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.FinderSync",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.recentfiles",
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.recentfiles",
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.FinderSync",
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac",
  ]
end
