cask "httpie" do
  version "2022.11.1"
  sha256 "e7ca23026b6336248d236ebd13c46fec0aacda95ca06f0a1493764c8ddacd2f3"

  url "https://github.com/httpie/desktop/releases/download/v#{version}/HTTPie-#{version}-arm64.dmg"
  name "httpie"
  desc ""
  homepage "https://github.com/httpie/desktop"

  app "HTTPie.app"
end
