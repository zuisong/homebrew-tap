cask "paper" do
  version "3.6"
  sha256 "f9f054de52e355b526d985c0f67c22ac8947cba154359a41a327fca03aa30658"
  url "https://paperapp.net/app/pap.er-v#{version}.zip"
  name "Paper"
  desc "Live wallpaper app"
  homepage "https://paper.meiyuan.in/"

  livecheck do
    url :homepage
    regex(/["'][^"']*pap\.er[._-]v?(\d+(?:\.\d+)+)\.zip["']/i)
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
