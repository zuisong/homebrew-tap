cask "chiner" do
  version "3.0.2"
  sha256 "b24d21d96380a221a2abec0453a0db64ad4c4389efd451c88f792b35233dcbb7"
  url "http://chiner-release.httpchk.com/CHINER-mac_v#{version}.dmg"
  name "Chiner"
  homepage "https://gitee.com/robergroup/chiner"

  app "CHINER元数建模.app", target: "Chiner.app"

  zap trash: [
    "~/Library/Application Support/chiner",
    "~/Library/Saved Application State/chiner.savedState",
    "~/Library/Preferences/chiner.plist",
  ]

end
