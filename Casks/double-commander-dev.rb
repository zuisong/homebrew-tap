cask "double-commander-dev" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.0-10761"
  sha256 arm:   "c7d06a35a0099863625689a689ced8c1fdae0bd686e4666ca5b1dca9973fb6d1",
         intel: "adcf60b3fedd5e17ef1b88dbf5cb3f352b72b529081c581a16e087eaccaa4913"

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
