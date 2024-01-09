cask "ffmpeg-static" do
  arch arm: "arm", intel: "intel"

  version "611"
  sha256 arm:   "da124a70feedaf1d1972cc21e1038194974393167472c0efdda4de3f87610d7e",
         intel: "94dcde746364b516d4c9d79cbae2807e5c0bea6a1a8be45742c2cd6850303426"

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

cask "ffmpeg-static" do
  arch arm: "arm64", intel: "x64"

  version "6.0"
  sha256 "6be74d6f449889c2e87a75873894f8520cad56c08ac76f2a628d85b0519daaca"

  url "https://github.com/eugeneware/ffmpeg-static/releases/download/b#{version}/ffmpeg-darwin-#{arch}.gz"
  name "ffmpeg-static"
  desc "Static build of ffmpeg"
  homepage "https://github.com/eugeneware/ffmpeg-static"

  binary "darwin-arm64", target: "ffmpeg"
end
