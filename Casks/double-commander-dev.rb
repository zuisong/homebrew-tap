cask "double-commander-dev" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.0-10783"
  sha256 arm:   "b3455ba70f008b4e402c1372be27f9c3c31a7c07a3da5aa5cd309eedc472f4ae",
         intel: "d924eadde210fbdd06d44fbe8e3e9613785a5b7351ee1f1f74e2666e15d71066"

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
