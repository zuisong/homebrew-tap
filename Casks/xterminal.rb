cask "xterminal" do
  arch arm: "arm64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "d453176066bac518f2bcb907b343e23bfb42e6eb2d17b97e48782438a7a4b97d",
         intel: "68634341d0770f982eb0076ab865163c28b1f1e0e0746b899e077c93c341eb7b"

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
