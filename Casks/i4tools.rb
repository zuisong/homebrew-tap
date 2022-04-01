cask "i4tools" do
  version "1.12.011,20220222"
  sha256 "cb914e5dfe30a01c709a4b0bc9d32121548ec4593f2b0b2ae21e899f90c55df2"

  url "https://d-updater.i4.cn/i4mac/#{version.csv.second}/0/i4Tools_v#{version.csv.first}.dmg"
  name "i4tools"
  desc "爱思助手是一款集“高效管理 iOS 设备数据”，“智能刷机”和“免费下载海量应用游戏、铃声壁纸”等为一体的 iOS 设备管理工具"
  homepage "https://i4.cn/"

  livecheck do
    url "https://url.i4.cn/fqIBBbaa"
    strategy :header_match do |headers|
      match=headers["location"].match(%r{/i4mac/([\\.\d]+)/0/i4Tools_v([\\.\d]+)\.dmg}i)
      "#{match[2]},#{match[1]}"
    end
  end

  pkg "i4tools.pkg"

  uninstall pkgutil: "cn.i4tools.mac"

  zap trash: [
    "~/Library/Application Support/i4Tools",
    "/private/var/db/receipts/cn.i4tools.mac.plist",
    "/private/var/db/receipts/cn.i4tools.mac.bom",

  ]
end
