cask "xterminal" do
  arch arm: "arm64", intel: "x64"

  version "2.9.3"
  sha256 arm:   "9425f05b2784e0c7d61deb2c0960acaf00d4fd0fa22847b87406c350a1cf8d8e",
         intel: "da7338c31249325c13b81747248feba062f610e5e47f8f5e672bf617350f8a0f"

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
