cask "wake" do
  version "0.8.0"
  sha256 "cf48872a5b06008ac5eb905012e5d7a39a5fd8ca57bb641ea39ab09297f03de7"

  url "https://github.com/iAmCorey/Wake/releases/download/v#{version}/Wake-#{version}-macos.zip"
  name "Wake"
  desc "Browse, search and resume local coding-agent sessions"
  homepage "https://github.com/iAmCorey/Wake"

  depends_on macos: :ventura

  app "Wake.app"

  binary "#{appdir}/Wake.app/Contents/MacOS/wake-cli"
  binary "#{appdir}/Wake.app/Contents/MacOS/wake-mcp"

  caveats <<~EOS
    Wake is ad-hoc signed but not notarized, so Gatekeeper blocks the first launch.
    Remove the quarantine flag after installing:

      xattr -dr com.apple.quarantine "#{appdir}/Wake.app"
  EOS

  zap trash: [
    "~/Library/Application Support/wake",
    "~/Library/Saved Application State/dev.corey.wake.savedState",
  ]
end
