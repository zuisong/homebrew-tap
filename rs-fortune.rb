class RsFortune < Formula
  desc "Rust version of fortune"
  homepage "https://github.com/zuisong/rs-fortune"
  url "https://github.com/zuisong/rs-fortune/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "fea3cf2180a94ab9d6aef7a08ade53aa510ad03dfa74d732f7bafacd27daf9da"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end
