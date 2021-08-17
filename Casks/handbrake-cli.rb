cask "handbrake-cli" do
  version "1.4.1"
  sha256 "4af30f966856469a360b9b3ae413ce01927cc57687f9892dbbc173ca13ca3b72"

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
