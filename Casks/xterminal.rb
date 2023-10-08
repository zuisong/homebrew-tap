cask "xterminal" do
  arch arm: "arm64", intel: "x64"

  version "1.3.41"
  sha256 arm:   "5ada67db6ea6dde75fd580dc937ab5bc917cec89311d28e7dcc0f0c01cf40cbd",
         intel: "7544dee2021f22f077059343d7e5f6218e993dba5d183302bf659a0b7ffbaea9"

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
