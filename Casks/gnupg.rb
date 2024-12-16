cask "gnupg" do
  version "2.4.7"
  sha256 "9bab5bd0b313f1c4e5e8046b96d07fa610b589a44c6f562058abf7956e80adab"

  url "https://downloads.sourceforge.net/gpgosx/GnuPG-#{version}.dmg"
  name "GnuPG"
  desc "Is a complete and free implementation of the OpenPGP standard"
  homepage "https://sourceforge.net/projects/gpgosx/"

  depends_on macos: ">= :sierra"

  pkg "Install.pkg"

  uninstall pkgutil: "net.sourceforge.gpgosx",
            delete:  "/usr/local/gnupg-*"
end
