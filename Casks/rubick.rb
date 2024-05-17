cask "rubick" do
  arch arm: "arm64", intel: "x64"

  version "4.2.3"
  sha256 arm:   "cb1c39f5d141d46cd3dbf07276c14e354c4f496ecfd11a6c517b248f9f15f0fd",
         intel: "b3dd333888247e5849ea1fc40c87847f0205a2013269dfcf5c650b08062918d2"

  url "https://github.com/rubickCenter/rubick/releases/download/v#{version}/rubick-#{version}-#{arch}.dmg"
  name "rubick"
  desc "Open-source plugin-based desktop efficiency toolbox"
  homepage "https://github.com/rubickCenter/rubick"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "rubick.app"

  zap trash: [
    "~/Library/Application Support/rubick/",
    "~/Library/Preferences/com.muwoo.rubick.plist",
    "~/Library/Services/rubick.workflow/",
    "~/rubick",
  ]
end
