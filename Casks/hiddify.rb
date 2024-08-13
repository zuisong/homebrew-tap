cask "hiddify" do
  version "2.1.5"
  sha256 "5bdea79a198c79fe0ccf9834a6fd7c8ed02403556ae38f88d236eb800d987c9c"

  url "https://github.com/hiddify/hiddify-next/releases/download/v#{version}/Hiddify-MacOS.dmg", verified: "github.com/hiddify/"
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
