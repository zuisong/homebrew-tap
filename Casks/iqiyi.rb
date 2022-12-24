cask "iqiyi" do
  version "13.12.0"
  sha256 :no_check

  url "https://static-d.iqiyi.com/ext/common/iQIYIMedia_271.dmg"
  name "爱奇艺视频"
  desc "Interactive media player"
  homepage "https://www.iqiyi.com/"

  livecheck do
    url "https://app.iqiyi.com/mac/player/index.html"
    strategy :page_match
    regex(/.*最新版本：([\d.]+)/i)
  end

  depends_on macos: ">= :catalina"

  app "爱奇艺.app"

  zap trash: [
    "~/Library/Containers/com.iqiyi.player.QYWidget",
    "~/Library/Application Scripts/com.iqiyi.player.QYWidget",
    "~/Library/Group Containers/group.com.qiyi",
  ]
end
