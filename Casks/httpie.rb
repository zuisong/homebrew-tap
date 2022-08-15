cask "httpie" do
  version "2022.12.0"
  sha256 "934f08b885c7fa483dcf3ee83a569224d9a199a1c86917544024daaad16890cc"

  url "https://github.com/httpie/desktop/releases/download/v#{version}/HTTPie-#{version}-arm64.dmg"
  name "httpie"
  desc "Http client"
  homepage "https://github.com/httpie/desktop"

  app "HTTPie.app"
end
