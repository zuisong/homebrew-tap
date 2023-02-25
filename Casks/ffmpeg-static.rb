cask "ffmpeg-static" do
  arch arm: "arm", intel: "intel"

  version "6"
  sha256 arm:   "15e67ff413d3d2436ddb3efd282344e50b8f1c6f834979b984371b90ebaf0449",
         intel: "4c3623c2356459d17375410d8b3b598b972e20c27131389d123e3f9470793dee"

  url "https://www.osxexperts.net/ffmpeg#{version}#{arch}.zip"
  name "ffmpeg-static"
  desc "Static build of ffmpeg"
  homepage "https://www.osxexperts.net/"

  livecheck do
    url :homepage
    regex(%r{/ffmpeg([\d_.]+)#{arch}.zip})
  end

  binary "ffmpeg"
end
