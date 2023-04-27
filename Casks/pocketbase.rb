cask "pocketbase" do
  arch arm: "arm64", intel: "amd64"

  version "0.15.2"
  sha256 arm:   "699b7fd4d2d65f2c8b5c9783835526931edd476f109174856a2ee8f8169532a4",
         intel: "b847049c98673e59e34d1f8cdf37bdd56353867f807264c2a197d346f69831d7"

  url "https://github.com/pocketbase/pocketbase/releases/download/v#{version}/pocketbase_#{version}_darwin_#{arch}.zip"
  name "PocketBase"
  desc "Platform for building and running decentralized applications"
  homepage "https://github.com/pocketbase/pocketbase"

  binary "pocketbase"
end
