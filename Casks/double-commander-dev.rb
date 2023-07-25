cask "double-commander-dev" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.0-10857"
  sha256 arm:   "9774749cb1243d44bd8b20f84377beb1e6ac666eb4647f558e12881bde6a4dfa",
         intel: "666363234ce0be9bdb6d8c09668b43a4f4e966dba66e5dc18b721862a5a03853"

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
