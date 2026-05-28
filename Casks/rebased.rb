cask "rebased" do
  version "1.1.1"
  sha256 "fa9b333ae62d46347b295e6da0f8478e27fa24dd82ae08385c79303771ef366e"

  url "https://github.com/DetachHead/rebased/releases/download/#{version}/rebased-aarch64.dmg"
  name "Rebased"
  desc "Open-source remake of the JetBrains Git client"
  homepage "https://github.com/DetachHead/rebased"

  livecheck do
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Rebased.app"
  shimscript = "#{staged_path}/rebased.wrapper.sh"
  binary shimscript, target: "rebased"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      open -na "#{appdir}/Rebased.app" --args "$@"
    EOS
  end
end
