cask "rebased" do
  version "1.0.15"
  sha256 "4fd09fd80c518249ce40eea90f22d41fc468a95f79b09083d0a5a315ef29e957"

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
