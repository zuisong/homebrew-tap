cask "chiner" do
  version "3.5.6"
  sha256 "1a106bc5aff66e025e41362714b7236fd2246bf06cb08c6df79d2f94ed485afa"

  url "http://chiner-release.httpchk.com/CHINER-mac_v#{version}.dmg",
      verified: "chiner-release.httpchk.com/"
  name "Chiner"
  desc "Database model tools"
  homepage "https://gitee.com/robergroup/chiner"

  livecheck do
    url "https://gitee.com/robergroup/chiner"
    strategy :page_match
    regex(%r{.*/robergroup/chiner/releases/v([.\d]+)"}i)
  end

  app "CHINER元数建模.app", target: "Chiner.app"

  zap trash: [
    "~/Library/Application Support/chiner",
    "~/Library/Saved Application State/chiner.savedState",
    "~/Library/Preferences/chiner.plist",
  ]
end
