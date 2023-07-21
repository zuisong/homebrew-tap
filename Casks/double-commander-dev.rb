cask "double-commander-dev" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.0-10852"
  sha256 arm:   "04102ee8f5fcff146c7e91fdc9ab4d4b8d1e6635bb5bc34a18b8f03a65e3bd8e",
         intel: "30eb311d1fb221652b8989115bbb2e56e703a0f8e436f9845d08776c47b128a1"

  # audit ignore "SourceForge URL format incorrect".
  url "https://doublecmd.sourceforge.io/snapshots/doublecmd-#{version}.cocoa.#{arch}.dmg"
  name "double-commander-dev"
  desc "File manager with two panels"
  homepage "https://doublecmd.sourceforge.io/"

  livecheck do
    url "https://doublecmd.sourceforge.io/snapshots/rss.php?os=mac"
    regex(/doublecmd-([\d\\.-]+).cocoa.aarch64.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).flatten.uniq.sort
    end
  end

  app "Double Commander.app"

  zap trash: "~/Library/Caches/doublecmd"
end
