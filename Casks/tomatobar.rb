cask "tomatobar" do
  version "3.1.0"
  sha256 "4c736acf8903cf16ee869e841bc9aba739d909c09ace7217a7204b543b4706c4"

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
