class RsFortune < Formula
  desc "Rust version of fortune"
  homepage "https://github.com/zuisong/rs-fortune"
  url "https://github.com/zuisong/rs-fortune/releases/download/v0.4.0/rs-fortune-universal-apple-darwin.tar.gz"
  sha256 "6ecf3654385b096c2d527787a4d28dcff2b8917f2cc53fe3cd031f356f17212d"
  license "MIT"

  def install
    bin.install "rs-fortune"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rs-fortune -h")
  end
end
