cask "xterminal" do
  arch arm: "arm64", intel: "x64"

  version "1.25.1"
  sha256 arm:   "9742282b70a03dccf0935ebba6d39be65f0196ac4f0010fe57aa8c9592c40d95",
         intel: "d8b836d5b0de2815a79f0c3f766eba77130b6264fe16f074b28e74ed6cc53e2b"

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
