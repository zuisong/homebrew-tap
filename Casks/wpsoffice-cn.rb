cask "wpsoffice-cn" do
  version "3.9.4,6378"
  sha256 "ab5a4f89c9486f7f3ceaf701f0d97c9d61cd7f95e8469b93056a3542952b16c6"

  url "https://wpscdn-macos-pkg.ks3-cn-beijing.ksyun.com/mac_wps_pkg/#{version.before_comma}/WPS_Office_#{version.before_comma}(#{version.after_comma}).dmg",
      verified: "wpscdn-macos-pkg.ks3-cn-beijing.ksyun.com"
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
