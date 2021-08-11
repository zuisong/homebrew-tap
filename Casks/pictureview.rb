cask "pictureview" do
  version "1.3.3"
  sha256 "4d86004d095d75e09d9564bed2f6f054674dba17b147ce7e463730f54c044fad"

  url "https://wl879.github.io/apps/picview/PictureView_#{version}.dmg"
  name "PictureView"
  desc "Image view app"
  homepage "https://wl879.github.io/apps/picview"

  livecheck do
    url "https://wl879.github.io/apps/picview"
    strategy :page_match
    regex(%r{.*/apps/picview/PictureView_([\\.\d]+).dmg"}i)
  end

  app "PictureView.app"

  zap trash: [
    "Library/Caches/com.zouke.PictureView",
    "Library/Preferences/com.zouke.PictureView.plist",
  ]
end
