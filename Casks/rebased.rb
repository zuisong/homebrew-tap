cask "rebased" do
  version "1.0.7,261.22158"
  sha256 "e0417f83d3638ce1922513be721dbcf73598b7ef383a06da43357619392cfd2f"

  url "https://github.com/DetachHead/rebased/releases/download/#{version.before_comma}/ideaIC-#{version.after_comma}-aarch64.dmg"
  name "Rebased"
  desc "Open-source remake of the JetBrains Git client"
  homepage "https://github.com/DetachHead/rebased"

  livecheck do
    url "https://github.com/DetachHead/rebased/releases/latest"
    regex(%r{href=.*?/releases/download/([^/]+)/ideaIC-([0-9.]+)-aarch64\.dmg}i) { |match| "#{match[1]},#{match[2]}" }
  end

  app "Rebased.app"
end
