cask "i4tools" do
  version "1.12.005"
  sha256 "f81496966e06ac0870f4e77c2ab26e7225099c007bdfa90a01b1e5ae1533f9ee"

  url "https://d-updater.i4.cn/i4mac/20210930/0/i4Tools_v#{version}.dmg"
  name "i4tools"
  desc "爱思助手是一款集“高效管理 iOS 设备数据”，“智能刷机”和“免费下载海量应用游戏、铃声壁纸”等为一体的 iOS 设备管理工具"
  homepage "https://i4.cn/"

  pkg "i4tools.pkg"

  uninstall pkgutil: "cn.i4tools.mac"

  zap trash: [
    "~/Library/Application Support/i4Tools",
    "/private/var/db/receipts/cn.i4tools.mac.plist",
    "/private/var/db/receipts/cn.i4tools.mac.bom",

  ]
end
