cask "xterminal" do
  arch arm: "arm64", intel: "x64"

  version "1.32.10"
  sha256 arm:   "5408a7802e3863ee0fff48a585bea54c7da9d0276c1b2225ea2f34e39e974723",
         intel: "4c9e76db8857d9782311086a83aa058e0bffaf2bb2199d97a3a611caced4f6ef"

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
