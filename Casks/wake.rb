cask "wake" do
  version "0.8.4"
  sha256 "997bed8598b479a0c418c4cfbadf24d16c3502fb05b48e55a212c779d1af60cf"

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
