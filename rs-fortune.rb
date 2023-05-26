class RsFortune < Formula
  desc "Rust version of fortune"
  homepage "https://github.com/zuisong/rs-fortune"
  url "https://github.com/zuisong/rs-fortune/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "aef13c202d9d6a6ba6960e40758bf4c28f74b491075a63696198a29955449168"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end
