cask "chiner" do
  version "3.1.0"
  sha256 "796890cc864338b58494c99130f1980dedd30b05e14b5a1c7591308315ab5eb8"

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
