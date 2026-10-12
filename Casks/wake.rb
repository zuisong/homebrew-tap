cask "wake" do
  version "0.9.1"
  sha256 "5fe60487040cd966d3a1d47d26b75eeb22f3f48d88349d2c51f925d8cc1ef0f8"

  url "https://github.com/iAmCorey/Wake/releases/download/v#{version}/Wake-#{version}-macos.zip"
  name "Wake"
  desc "Browse, search and resume local coding-agent sessions"
  homepage "https://github.com/iAmCorey/Wake"

  depends_on macos: :ventura

  app "Wake.app"
  binary "#{appdir}/Wake.app/Contents/MacOS/wake-cli"
  binary "#{appdir}/Wake.app/Contents/MacOS/wake-mcp"

  zap trash: [
    "~/Library/Application Support/wake",
    "~/Library/Saved Application State/dev.corey.wake.savedState",
  ]

  caveats <<~EOS
    Wake is ad-hoc signed but not notarized, so Gatekeeper blocks the first launch.
    Remove the quarantine flag after installing:

      xattr -dr com.apple.quarantine "#{appdir}/Wake.app"
  EOS
end
