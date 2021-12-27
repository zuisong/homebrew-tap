cask "apifox" do
  version "1.4"
  sha256 :no_check

  url "https://cdn.apifox.cn/download/Apifox-macOS-arm64-latest.zip"
  name "apifox"
  desc "API 文档、API 调试、API Mock、API 自动化测试"
  homepage "https://www.apifox.cn/"

  app "Apifox.app"

  zap trash: [
    "~/Library/Preferences/cn.apifox.app.plist",
    "~/Library/Saved Application State/cn.apifox.app.savedState",
    "~/Library/Application Support/apifox",
  ]
end
