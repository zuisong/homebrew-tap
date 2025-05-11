cask "xterminal" do
  arch arm: "arm64", intel: "x64"

  version "3.14.1"
  sha256 arm:   "53689fd8542edb12079771317fa3ee94580607e547f3a8342527a4c0b71d04ed",
         intel: "de712af31dff8c29b0f87044f0f3ac55b4530863dcf23617a067ecfe2577c167"

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
