cask "pocketbase" do
  arch arm: "arm64", intel: "amd64"

  version "0.14.2"
  sha256 arm:   "ae32f0569f6afc33ca8ef193cc50161a2168460d0f35e52f4d5b1feac4a6f0a0",
         intel: "b36c1d1721884e13aed6de002f31b093b7dffa17daba844030ff44aa75bf6e2b"

  url "https://github.com/pocketbase/pocketbase/releases/download/v#{version}/pocketbase_#{version}_darwin_#{arch}.zip"
  name "PocketBase"
  desc "Platform for building and running decentralized applications"
  homepage "https://github.com/pocketbase/pocketbase"

  binary "pocketbase"
end
