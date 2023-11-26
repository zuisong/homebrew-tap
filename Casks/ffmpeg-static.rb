cask "ffmpeg-static" do
  arch arm: "arm", intel: "intel"

  version "61"
  sha256 arm:   "124df65aa37ff5d913d8402534f2d72975ea55036fa32fec258e76d631ee4d87",
         intel: "9a7de6ea24052166340c50e00dd493da49315431e6bfde5ed2a600eab9f27b65"

  url "https://www.osxexperts.net/ffmpeg#{version}#{arch}.zip"
  name "ffmpeg-static"
  desc "Static build of ffmpeg"
  homepage "https://www.osxexperts.net/"

  livecheck do
    url :homepage
    regex(%r{/ffmpeg([\d_.]+)#{arch}.zip})
  end

  conflicts_with formula: "ffmpeg"

  binary "ffmpeg"
end
