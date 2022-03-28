cask "tomatobar" do
  version "3.0.1"
  sha256 "884874755ee9bb4e782e3663846f26211a3e7e33ad1e81778ce11a1dc1e697ef"

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
