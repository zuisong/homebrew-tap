cask "xterminal" do
  arch arm: "arm64", intel: "x64"

  version "1.20.9"
  sha256 arm:   "dcab688b6fb674a9efc8217582478d5cd7e982882ad3a08e5a5550617a2d12d6",
         intel: "545a20004fe0cdcb6a22093abd7884f9e1ef2bfd3f1af30a53822e5a7a365f10"

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
