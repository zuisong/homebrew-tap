cask "chiner" do
  version "3.2.0"
  sha256 "409ae32e7519d08acb17ec97c23ff7deb08e2632ed8a7b72a4a6a54b4f7f6d2f"

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
