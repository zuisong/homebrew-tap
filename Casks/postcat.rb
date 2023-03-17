cask "postcat" do
  arch arm: "-arm64"

  version "0.4.0"
  sha256 arm:   "759ec5a234459cd1c4c5e63ccda94374dab29014b7e57fcd85a5d6b2f24470c2",
         intel: "1ff8431ba516302de22bd6764c0d0c900a7eccb42883419e7e0273368f4c1ba5"

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
