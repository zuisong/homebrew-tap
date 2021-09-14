cask "ffmpeg-static" do
  version "4.4"
  sha256 "daa908133ab580a25a0e7507aabd27fec1331ce50637b0d2ce3cc80224c7c2b4"

  url "https://github.com/eugeneware/ffmpeg-static/releases/download/b#{version}/darwin-arm64.gz"
  name "ffmpeg-static"
  desc "Static build of ffmpeg"
  homepage "https://github.com/eugeneware/ffmpeg-static"

  binary "darwin-arm64", target: 'ffmpeg'
end
