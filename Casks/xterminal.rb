cask "xterminal" do
  arch arm: "arm64", intel: "x64"

  version "1.3.11"
  sha256 arm:   "fef2a0cf90eff87c87b45c0f3e9a0eda3894a12b701dbaadab85f373ff4b48c2",
         intel: "25a7d4cb85b407288d159d95b20c9b78b7ad0966aa9e94b81b9e0a93e371f542"

  url "https://cdn-cn.xterminal.cn/xterminal/XTerminal-#{version}-mac-#{arch}.dmg"
  name "xterminal"
  desc "Not only a powerful SSH tool, but also a local console terminal"
  homepage "https://www.xterminal.cn/"

  livecheck do
    url "https://api.xterminal.cn/server/electron/version2"
    strategy :json do |json|
      json["mac"]["version"]
    end
  end

  app "xterminal.app"
end
