cask "pocketbase" do
  arch arm: "arm64", intel: "amd64"

  version "0.14.5"
  sha256 arm:   "959030f2298df85643406e018f757afc1b43d9dfe5f04ad3c2a34231a6a8d271",
         intel: "0c5cf2df43b65953c270e7479074a3f61cb6c20fc331cd47eb6fc03a5394c108"

  url "https://github.com/pocketbase/pocketbase/releases/download/v#{version}/pocketbase_#{version}_darwin_#{arch}.zip"
  name "PocketBase"
  desc "Platform for building and running decentralized applications"
  homepage "https://github.com/pocketbase/pocketbase"

  binary "pocketbase"
end
