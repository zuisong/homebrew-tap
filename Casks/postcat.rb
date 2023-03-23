cask "postcat" do
  arch arm: "-arm64"

  version "0.4.1"
  sha256 arm:   "6cdb3e98d3495bce7e51b4e2b7de806cf78b4acbf940cf74e801a74a693a6501",
         intel: "5f3e3c8c4217856f90a203fee7e145908097934dd9fef1fd09d836f62324591f"

  url "https://github.com/Postcatlab/postcat/releases/download/v#{version}/Postcat-#{version}#{arch}-mac.zip"
  name "Postcat"
  desc "Open source API development and testing tool"
  homepage "https://github.com/Postcatlab/postcat"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Postcat.app"

  zap trash: [
    "~/Library/Application Support/Postcat",
  ]
end
