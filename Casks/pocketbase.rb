cask "pocketbase" do
  arch arm: "arm64", intel: "amd64"

  version "0.13.4"
  sha256 arm:   "56b7a35d0ab8aafb678dbb545bd2f85f0240714bb19e725c603b727cf3813632",
         intel: "b0cbce4850859e75e8c64a46672c8cf71d8c01ceb024faecb105108d507e7388"

  url "https://github.com/pocketbase/pocketbase/releases/download/v#{version}/pocketbase_#{version}_darwin_#{arch}.zip"
  name "PocketBase"
  desc "Platform for building and running decentralized applications"
  homepage "https://github.com/pocketbase/pocketbase"

  binary "pocketbase"
end
