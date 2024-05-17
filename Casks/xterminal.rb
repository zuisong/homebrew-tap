cask "xterminal" do
  arch arm: "arm64", intel: "x64"

  version "1.24.7"
  sha256 arm:   "8a3551320979c03266d54af06f04892c4aae3e5f155bdd370aafd4f60d461a40",
         intel: "c5957fb04e1666e9404cd8489fa9dc8cf9fc32a0830f437cecbced8300fd3ca7"

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
