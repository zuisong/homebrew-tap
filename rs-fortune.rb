class RsFortune < Formula
  desc "Rust version of fortune"
  homepage "https://github.com/zuisong/rs-fortune"
  url "https://github.com/zuisong/rs-fortune/releases/download/v0.6.0/rs-fortune-universal-apple-darwin.tar.gz"
  sha256 "578fc917af3742864dcd886748f3cdbb1b1bf62566ec13bb49178e923fc854e7"
  license "MIT"

  def install
    bin.install "rs-fortune"
    generate_completions_from_executable(bin/"rs-fortune", "--completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rs-fortune -h")
  end
end
