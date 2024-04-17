class GitMulti < Formula
  desc "Rewrite of git-multi in Go"
  homepage "https://github.com/chrsmutti/git-multi"
  url "https://github.com/chrsmutti/git-multi/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "bb5e713c75d61f352cae19cbf7571d5663b10b780508b879e8b03533b1045d45"
  license ""

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
