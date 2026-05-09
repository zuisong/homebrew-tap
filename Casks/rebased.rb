cask "rebased" do
  version "1.0.12"
  sha256 "3ef9aace106128e78e94777c7fe64228cfa1df816e7cc15b8b1bc054b7df9e9c"

  url "https://github.com/DetachHead/rebased/releases/download/#{version}/rebased-aarch64.dmg"
  name "Rebased"
  desc "Open-source remake of the JetBrains Git client"
  homepage "https://github.com/DetachHead/rebased"

  livecheck do
    strategy :github_latest
  end

  depends_on arch: :arm64

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
