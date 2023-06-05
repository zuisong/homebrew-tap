cask "double-commander-dev" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.0-10765"
  sha256 arm:   "581d0df483bff6bafe8a9a6b2139131f731a232321f0668f4ec6e757b74058b3",
         intel: "c9b3c659b4711b9644806a7bd590ee87f9b7e7fe0f041a9bc45d5f85385356d2"

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
