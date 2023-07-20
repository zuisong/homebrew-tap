cask "double-commander-dev" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.0-10850"
  sha256 arm:   "0b6221f5daa2f30cbaec3103d123ed632953344e3e94513201815be5ec1ba8eb",
         intel: "2013a60c526e354d19966ea4855e57c3e941497439a36845ed46e2736b7811d5"

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
