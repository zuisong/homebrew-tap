cask "xterminal" do
  arch arm: "arm64", intel: "x64"

  version "1.31.4"
  sha256 arm:   "de9bebdf802cc6154d1443f930baf165e36890507e6e8d4912b75db29a1a491c",
         intel: "31b0eb9f078354448e9042ea2f34c894b49bb71b0bf46a8a2d15a1819934fa18"

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
