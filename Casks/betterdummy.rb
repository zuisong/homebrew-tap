cask "betterdummy" do
  version "1.0.5"
  sha256 "cbadc6dd7f9630112b39b54b239346db7abbdbc6188859b81ef7a09939feee8e"

  url "https://github.com/waydabber/BetterDummy/releases/download/v#{version}/BetterDummy-v#{version}.zip"
  name "BetterDummy"
  desc "hidpi"
  homepage "https://github.com/waydabber/BetterDummy"

  app "BetterDummy.app"
end
