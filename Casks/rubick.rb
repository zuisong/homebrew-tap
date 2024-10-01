cask "rubick" do
  arch arm: "arm64", intel: "x64"

  version "4.2.7"
  sha256 arm:   "1a1e39d9aae1a84cadc4352b198018d199e82b611dba4de506d9687494a1d80c",
         intel: "98280a3c106002c12d4d1805096315e2212386a624371ef8fec83682ae85a168"

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
