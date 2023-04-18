cask "pocketbase" do
  arch arm: "arm64", intel: "amd64"

  version "0.15.0"
  sha256 arm:   "2d26ae662836ed64550233bf07c62d436ad87e875033971e281038fddfe35230",
         intel: "b4f7f0715d90f2f44d2587f1dda3197ff423924179f82289af58bff4455a4d6c"

  url "https://github.com/pocketbase/pocketbase/releases/download/v#{version}/pocketbase_#{version}_darwin_#{arch}.zip"
  name "PocketBase"
  desc "Platform for building and running decentralized applications"
  homepage "https://github.com/pocketbase/pocketbase"

  binary "pocketbase"
end
