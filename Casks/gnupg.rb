cask "gnupg" do
  version "2.4.4"
  sha256 "ef4fd0922354bee99698fef0ee32caadc04531ab54d563c1cf7de2fa671ebf65"

  url "https://downloads.sourceforge.net/gpgosx/GnuPG-#{version}.dmg"
  name "GnuPG"
  desc "Is a complete and free implementation of the OpenPGP standard"
  homepage "https://sourceforge.net/projects/gpgosx/"

  depends_on macos: ">= :sierra"

  pkg "Install.pkg"

  uninstall pkgutil: "net.sourceforge.gpgosx",
            delete:  "/usr/local/gnupg-*"
end
