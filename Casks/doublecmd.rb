cask "doublecmd" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.9"
  sha256 arm:   "6d615ae9d87fe60fed4efbb32fa83b5c21f2bfc007836f3f12e60e599d3447e8",
         intel: "5a60a5efa31b4438512aabf0213c2c307dd910b3a6661f70da4dfbcfa6730578"

  url "https://github.com/doublecmd/doublecmd/releases/download/v#{version}/doublecmd-#{version}.cocoa.#{arch}.dmg"
  name "Double Commander"
  desc "File manager with two panels"
  homepage "https://doublecmd.sourceforge.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Double Commander.app"

  # Upstream ships an ad-hoc signature, so Gatekeeper rejects the quarantined app
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Double Commander.app"]
  end

  zap trash: "~/Library/Caches/doublecmd"
end
