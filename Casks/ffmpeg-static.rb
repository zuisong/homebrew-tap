cask "ffmpeg-static" do
  version "4.4.1"
  sha256 "a9f5e7b8c10cbed188a945ae893d753296a5561683af3a354ff41b42c8841e54"

  url "https://github.com/eugeneware/ffmpeg-static/releases/download/b#{version}/darwin-arm64.gz"
  name "ffmpeg-static"
  desc "Static build of ffmpeg"
  homepage "https://github.com/eugeneware/ffmpeg-static"

  binary "darwin-arm64", target: "ffmpeg"
end
