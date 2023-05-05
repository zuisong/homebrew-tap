cask "pocketbase" do
  arch arm: "arm64", intel: "amd64"

  version "0.15.3"
  sha256 arm:   "0253457a6c620a9713d6881ddf18a2b8e58665926ddbf01bbf8382b7a8980995",
         intel: "b0784db12734a4e81510109a7e358a84a2ce9d66cea88e8ee481e0b539e75329"

  url "https://github.com/pocketbase/pocketbase/releases/download/v#{version}/pocketbase_#{version}_darwin_#{arch}.zip"
  name "PocketBase"
  desc "Platform for building and running decentralized applications"
  homepage "https://github.com/pocketbase/pocketbase"

  binary "pocketbase"
end
