cask "ffmpeg-static" do
  arch arm: "arm64", intel: "x64"

  version "6.0"
  sha256 "6be74d6f449889c2e87a75873894f8520cad56c08ac76f2a628d85b0519daaca"

  url "https://github.com/eugeneware/ffmpeg-static/releases/download/b#{version}/ffmpeg-darwin-#{arch}.gz"
  name "ffmpeg-static"
  desc "Static build of ffmpeg"
  homepage "https://github.com/eugeneware/ffmpeg-static"

  binary "ffmpeg-darwin-#{arch}", target: "ffmpeg"
end
