cask "chiner" do
  version "3.5.7"
  sha256 "54885b519d1edb1340612ba96056e8af75f3834d98ee3d1f4724b9fc40849865"

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
