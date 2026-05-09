cask "losslesscut-ffmpeg" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/mifi/lossless-cut"
  homepage "https://github.com/mifi/lossless-cut"

  depends_on cask: "losslesscut"

  binary "#{appdir}/LosslessCut.app/Contents/Resources/ffmpeg"
  binary "#{appdir}/LosslessCut.app/Contents/Resources/ffprobe"

  # No zap stanza required
end
