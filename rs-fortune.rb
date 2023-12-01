class RsFortune < Formula
  desc "Rust version of fortune"
  homepage "https://github.com/zuisong/rs-fortune"
  url "https://github.com/zuisong/rs-fortune/releases/download/v0.8.0/rs-fortune-universal-apple-darwin.tar.gz"
  sha256 "f3ca4ce7a45018b3a7ff056182644091da63de3b9587e1b190b3d5f82366a0d5"
  license "MIT"

  def install
    bin.install "rs-fortune"
    generate_completions_from_executable(bin/"rs-fortune", "completions", "--shell")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rs-fortune -h")
  end
end
