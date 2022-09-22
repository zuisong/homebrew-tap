cask "paper" do
  version "5.0.12"
  sha256 "74191b0a8ed942b75c09bd77a682e0578c75f601289c1f93f0f87dc700816fff"

  url "https://s3.nsns.in/dl/paper-v#{version}.dmg",
      verified: "s3.nsns.in"
  name "Paper"
  desc "Live wallpaper app"
  homepage "https://paper.meiyuan.in/"

  livecheck do
    url :homepage
    regex(/paper-v?(.+)\.dmg/i)
  end

  depends_on macos: ">= :el_capitan"

  app "pap.er.app"

  uninstall quit: "com.meiyuan.paper"

  zap trash: [
    "~/Library/Application Scripts/com.meiyuan.LauncherApplication",
    "~/Library/Application Scripts/com.meiyuan.paper",
    "~/Library/Preferences/com.meiyuan.paper.plist",
    "~/Library/Containers/com.meiyuan.LauncherApplication",
    "~/Library/Containers/com.meiyuan.paper",
  ]
end
