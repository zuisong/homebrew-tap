cask "rubick" do
  arch arm: "arm64", intel: "x64"

  version "4.1.6"
  sha256 arm:   "f5c97e2ec26b695719dd31c97855c268904eb088f352266a8ef83f99ef2730ad",
         intel: "afc935cacad21c29c8a4580521fd669788bbb1151bf3292f71406887f88e0a86"

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
    "~/rubick",
    "~/Library/Application Support/rubick/",
    "~/Library/Preferences/com.muwoo.rubick.plist",
    "~/Library/Services/rubick.workflow/",
  ]
end
