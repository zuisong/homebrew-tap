cask "rubick" do
  arch arm: "arm64", intel: "x64"

  version "4.2.9"
  sha256 arm:   "32f6df8c20f9f2868ab715759530a9df263eab41e40cd54d79993b71659e3db6",
         intel: "3cc66b586d96f87c82a52502b29b36758801cd1801c2a141880fdb92c049c48a"

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
