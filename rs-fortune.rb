class RsFortune < Formula
  desc "Rust version of fortune"
  homepage "https://github.com/zuisong/rs-fortune"
  url "https://github.com/zuisong/rs-fortune/releases/download/v0.7.0/rs-fortune-universal-apple-darwin.tar.gz"
  sha256 "e9cffe647bbbe897c29aeef1412a7bd3eecff2208d7e771191cce4b026fc9b5f"
  license "MIT"

  def install
    bin.install "rs-fortune"
    generate_completions_from_executable(bin/"rs-fortune", "completions", "--shell")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rs-fortune -h")
  end
end
