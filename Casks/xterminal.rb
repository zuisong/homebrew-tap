cask "xterminal" do
  arch arm: "arm64", intel: "x64"

  version "1.20.0"
  sha256 arm:   "68e069f7ca82e9c8036910f4152a1c9d90d3ddd11b7cbea5be2e7f5fa523267b",
         intel: "9f83f5b94e4485bd539b755a388745225e27d1ce2c970265af79b1767a1735f2"

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
