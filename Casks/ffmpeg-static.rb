cask "ffmpeg-static" do
  version "5.0.1"
  sha256 "6ff886d73aace493ea0b37625d9503ef7493a4a3d0331305ee89c91528b4e3bc"

  url "https://github.com/eugeneware/ffmpeg-static/releases/download/b#{version}/darwin-arm64.gz"
  name "ffmpeg-static"
  desc "Static build of ffmpeg"
  homepage "https://github.com/eugeneware/ffmpeg-static"

  binary "darwin-arm64", target: "ffmpeg"
end
