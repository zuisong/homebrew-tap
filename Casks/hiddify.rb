cask "hiddify" do
  version "1.4.0"
  sha256 "fe7caf7fc0432d9f47a94f25fc04bca99cd4f0e234801dcbb1986df37c1fb85a"

  url "https://github.com/hiddify/hiddify-next/releases/download/v#{version}/Hiddify-MacOS.dmg"
  name "hiddify"
  desc "Multi-platform auto-proxy client"
  homepage "https://hiddify.com/"

  app "hiddify.app"

  zap trash: [
    "~/Library/Application Support/app.hiddify.com/",
    "~/Library/Caches/SentryCrash/Hiddify/",
    "~/Library/Preferences/app.hiddify.com.plist",
    "~/Library/Saved Application State/app.hiddify.com.savedState/",
  ]
end
