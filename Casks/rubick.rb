cask "rubick" do
  arch arm: "arm64", intel: "x64"

  version "4.2.1"
  sha256 arm:   "011dfe1be132a239f2cb81f6dab4fde144e11a4cb0a424b2c8c08842f56e85db",
         intel: "0bf8b93868c542a76e21cbf444aaabc3b9421820c69cb78036c8e2296872fb85"

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
