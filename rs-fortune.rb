class RsFortune < Formula
  desc "Rust version of fortune"
  homepage "https://github.com/zuisong/rs-fortune"
  url "https://github.com/zuisong/rs-fortune/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "d500a8d9f061cf9c4afec179d11f73eec2092609fa13b78a9420c9773c2919e1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end
