cask "xterminal" do
  arch arm: "arm64", intel: "x64"

  version "1.20.23"
  sha256 arm:   "bcf484c79b177ec797e46902bd05fa9dc62148ca39ae0b12cac989600b300710",
         intel: "01db792a44163011886da4df8dfc0d3d2fdcffd6571aa1c5be5f82dbb901932e"

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
