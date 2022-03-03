cask "ffmpeg-static" do
  version "5.0"
  sha256 "ecac76e3fca84a5a04fbb3a9cba51e7f399ac290b8b6d6e8410145fda019ccb2"

  url "https://github.com/eugeneware/ffmpeg-static/releases/download/b#{version}/darwin-arm64.gz"
  name "ffmpeg-static"
  desc "Static build of ffmpeg"
  homepage "https://github.com/eugeneware/ffmpeg-static"

  binary "darwin-arm64", target: "ffmpeg"
end
