cask "gnupg" do
  version "2.4.5"
  sha256 "e924d250adc9b78a4cb72dee34e9c4d40b4c3c281aee80fcc43366de1a9cc61a"

  url "https://downloads.sourceforge.net/gpgosx/GnuPG-#{version}.dmg"
  name "GnuPG"
  desc "Is a complete and free implementation of the OpenPGP standard"
  homepage "https://sourceforge.net/projects/gpgosx/"

  depends_on macos: ">= :sierra"

  pkg "Install.pkg"

  uninstall pkgutil: "net.sourceforge.gpgosx",
            delete:  "/usr/local/gnupg-*"
end
