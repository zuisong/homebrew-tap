cask "rubick" do
  arch arm: "arm64", intel: "x64"

  version "4.2.2"
  sha256 arm:   "325a4ed78689bc265c6b15fb012447e9a17cc31e9ad43a73d928310da0907eaf",
         intel: "f865184654db1270ecd0c14de6ca62b6da00435d75fdca6f5161211af195685e"

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
