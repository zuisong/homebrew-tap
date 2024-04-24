class Dotfiles < Formula
  desc "Symbolic links management CLI"
  homepage "https://github.com/rhysd/dotfiles"
  url "https://github.com/rhysd/dotfiles/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "fd98beaf3a8372272f7218bfd0bea578e9bfea6ae01e3a8b260e92fc35a2434b"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "."
  end
end
