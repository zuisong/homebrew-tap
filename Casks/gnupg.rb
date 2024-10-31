cask "gnupg" do
  version "2.4.6"
  sha256 "367c877dae7e2b1c035451c1a00c02acbf2d11f5b3b2f3be992da8c55f3c3fef"

  url "https://downloads.sourceforge.net/gpgosx/GnuPG-#{version}.dmg"
  name "GnuPG"
  desc "Is a complete and free implementation of the OpenPGP standard"
  homepage "https://sourceforge.net/projects/gpgosx/"

  depends_on macos: ">= :sierra"

  pkg "Install.pkg"

  uninstall pkgutil: "net.sourceforge.gpgosx",
            delete:  "/usr/local/gnupg-*"
end
