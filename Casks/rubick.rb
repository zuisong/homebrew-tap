cask "rubick" do
  arch arm: "arm64", intel: "x64"

  version "4.2.6"
  sha256 arm:   "2d4c33e6c180cb22bffddff6b7582912d85676b48eaf95761f1c02efa5ddb11d",
         intel: "b4513b4c3926586160b4b821ab9353ac38fac14f0cf4b742381e0f400a37ddd0"

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
