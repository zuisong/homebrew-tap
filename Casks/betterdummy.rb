cask "betterdummy" do
  version "1.0.7"
  sha256 "0c0fd120da2d53c2f9453a40768f796d1052ba848c73ea9f4c2ecff7874431c1"

  url "https://github.com/waydabber/BetterDummy/releases/download/v#{version}/BetterDummy-v#{version}.zip"
  name "BetterDummy"
  desc "Dummy Display for Apple Silicon Macs to achieve custom resolutions"
  homepage "https://github.com/waydabber/BetterDummy"

  app "BetterDummy.app"

  zap trash: [
    "~/Library/Containers/me.waydabber.BetterDummy",
    "~/Library/Application Scripts/me.waydabber.BetterDummy",
  ]
end
