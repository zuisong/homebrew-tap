cask "tomatobar" do
  version "3.2.0"
  sha256 "130a5680593f0480ebbf539c979f27f3fbaae45de51879ac14f59bec72fcfa25"

  url "https://github.com/ivoronin/TomatoBar/releases/download/v#{version}/TomatoBar-v#{version}.zip"
  name "TomatoBar"
  desc "🍅 World's neatest Pomodoro timer for menu bar"
  homepage "https://github.com/ivoronin/TomatoBar"

  app "TomatoBar.app"

  zap trash: [
    "~/Library/Containers/com.github.ivoronin.TomatoBar",
    "~/Library/Application Scripts/com.github.ivoronin.TomatoBar",
  ]
end
