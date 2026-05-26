cask "rebased" do
  version "1.1.0"
  sha256 "99bf0e466300c3949db9219204f7efd475d50dd61d8b4dd6e3d3c1e680b255fc"

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
