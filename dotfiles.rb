class Dotfiles < Formula
  desc "Symbolic links management CLI"
  homepage "https://github.com/rhysd/dotfiles"
  url "https://github.com/rhysd/dotfiles/archive/v0.2.2.tar.gz"
  sha256 "090b918636b405be8dab6d19e541afda2bf0e252409bff284679b297d3e563e4"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "."
  end

  livecheck do
    url :url
    strategy :github_latest
  end

  test do
    system "dotfiles", "version"
  end
end
