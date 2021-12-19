cask "apifox" do
  version "1.4"
  sha256 :no_check
  desc "API 文档、API 调试、API Mock、API 自动化测试"

  url "https://cdn.apifox.cn/download/Apifox-macOS-arm64-latest.zip"
  name "apifox"
  homepage "https://www.apifox.cn/"

  app "Apifox.app"
end
