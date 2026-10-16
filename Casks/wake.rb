cask "wake" do
  version "0.9.5"
  sha256 "8c304a8e12ff4a575d56301c242f4fd7fb48603a1589333a6a7638bb9bb85b8d"

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
