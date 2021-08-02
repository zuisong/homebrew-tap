cask "handbrake-cli" do
  version "1.4.0"
  sha256 "17e51c52f29142b94c49c744afe2b4b80c20176309cd04a2234b79f10f35f1f5"

  url "https://github.com/HandBrake/HandBrake/releases/download/#{version}/HandBrakeCLI-#{version}.dmg"
  name "HandBrakeCLI"
  desc "Video transcoder tool"
  homepage "https://github.com/HandBrake/HandBrake"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "HandBrakeCLI"
end
