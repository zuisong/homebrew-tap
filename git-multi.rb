class GitMulti < Formula
  desc "Rewrite of git-multi in Go"
  homepage "https://github.com/chrsmutti/git-multi"
  url "https://github.com/chrsmutti/git-multi/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0c059644422db246dee68ee1c66f971144dc8014c5a528b57f2e5a8bc0792b54"
  license ""

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
