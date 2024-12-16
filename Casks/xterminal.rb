cask "xterminal" do
  arch arm: "arm64", intel: "x64"

  version "2.7.1"
  sha256 arm:   "48a6beac21e1025e557576afb762a61bd60e0644445fc50d6954e37059962a9e",
         intel: "36b54726cfd29e7cd56d361f6d2b69f79966502070cc565162374ca50bc21f88"

  url "https://cdn-cn.xterminal.cn/downloads/XTerminal-#{version}-mac-#{arch}.dmg", user_agent: :fake
  name "xterminal"
  desc "Not only a powerful SSH tool, but also a local console terminal"
  homepage "https://www.xterminal.cn/"

  livecheck do
    url "https://api.xterminal.cn/server/electron/version3"
    strategy :json do |json|
      json["mac"]["version"]
    end
  end

  app "xterminal.app"
end
