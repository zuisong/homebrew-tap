cask "paper" do
  version "5.0.11b"
  sha256 "cf3386a0d73a6ef92575b0f45da4bbece792cbdf1252e1bb06c149dd58160b84"

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
