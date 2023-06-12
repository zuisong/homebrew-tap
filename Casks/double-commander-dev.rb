cask "double-commander-dev" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.0-10776"
  sha256 arm:   "4230f40cbb3ac73a6323b082bcb9d49caaf464eaca5b80a017b99357b441368d",
         intel: "65177f4b4949494e943df2efd199c5f0b5776f290d43212ee8cc3b6730c6f316"

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
