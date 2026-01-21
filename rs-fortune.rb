class RsFortune < Formula
  desc "Rust version of fortune"
  homepage "https://github.com/zuisong/rs-fortune"
  url "https://github.com/zuisong/rs-fortune/releases/download/v0.10.0/rs-fortune-universal-apple-darwin.tar.gz"
  sha256 "6bcf05495b11182d28d212bd951e04ebdc9e6011e90c12819d465de07200cda4"
  license "MIT"

  def install
    bin.install "rs-fortune"
    generate_completions_from_executable(bin/"rs-fortune", "completions", "--shell")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rs-fortune -h")
  end
end
