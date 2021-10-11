cask "handbrake-cli" do
  version "1.4.2"
  sha256 "0e1a014861cd12dd7b15f255700a0bb3809dd397881d3859129ce075be0aa6f0"

  url "https://github.com/HandBrake/HandBrake/releases/download/#{version}/HandBrakeCLI-#{version}.dmg",
      verified: "github.com/HandBrake/HandBrake/"
  name "HandBrakeCLI"
  desc "Open-source video transcoder"
  homepage "https://handbrake.fr/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "HandBrakeCLI"
end
