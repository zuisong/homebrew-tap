cask "pocketbase" do
  arch arm: "arm64", intel: "amd64"

  version "0.14.0"
  sha256 arm:   "89a3a53eff7ff3a9a6b7d91b879099ad681e1bcbd5f17406b793cc0587f8a522",
         intel: "dbaf0b36dcfbcaa373e197705db356cbe3fb2aac4cb0560fbdae50ff52b6277c"

  url "https://github.com/pocketbase/pocketbase/releases/download/v#{version}/pocketbase_#{version}_darwin_#{arch}.zip"
  name "PocketBase"
  desc "Platform for building and running decentralized applications"
  homepage "https://github.com/pocketbase/pocketbase"

  binary "pocketbase"
end
