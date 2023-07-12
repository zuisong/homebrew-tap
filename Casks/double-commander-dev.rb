cask "double-commander-dev" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.0-10804"
  sha256 arm:   "3bfc1b4b19722c86a546e9e30500f1eb4295b88dcdac61a2ed51f9f418714902",
         intel: "e16544a9681ba9ec108801b5040e168456514698f5c66c43f2b148ed60a164cd"

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
