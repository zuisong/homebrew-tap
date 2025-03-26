cask "ffmpeg-static" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/Homebrew/homebrew-cask/raw/refs/heads/master/Casks/l/losslesscut.rb"
  homepage "https://github.com/mifi/lossless-cut"

  depends_on cask: "losslesscut"

  binary "#{appdir}/LosslessCut.app/Contents/Resources/ffmpeg"
  binary "#{appdir}/LosslessCut.app/Contents/Resources/ffprobe"

  # No zap stanza required
end
