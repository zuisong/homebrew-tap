cask "rebased" do
  version "1.0.8,261.22158.SNAPSHOT"
  sha256 "19f4ddc9807737b56510177a8e1e20a98bba796e67caf086fa3c90c29b3129b8"

  url "https://github.com/DetachHead/rebased/releases/download/#{version.csv.first}/ideaIC-#{version.csv.second}-aarch64.dmg"
  name "Rebased"
  desc "Open-source remake of the JetBrains Git client"
  homepage "https://github.com/DetachHead/rebased"

  livecheck do
    url :url
    strategy :github_latest do |json, regex|
      json["assets"]&.filter_map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
    regex(%r{/download/([^/]+)/ideaIC-([0-9]+(?:\.[0-9]+)+(?:\.SNAPSHOT)?)-aarch64\.dmg$}i)
  end

  app "Rebased.app"
  shimscript = "#{staged_path}/rebased.wrapper.sh"
  binary shimscript, target: "rebased"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      open -na "#{appdir}/Rebased.app" --args "$@"
    EOS
  end
end
