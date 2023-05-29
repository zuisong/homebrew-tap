class RsFortune < Formula
  desc "Rust version of fortune"
  homepage "https://github.com/zuisong/rs-fortune"
  url "https://github.com/zuisong/rs-fortune/releases/download/v0.5.0/rs-fortune-universal-apple-darwin.tar.gz"
  sha256 "53c2e13ed3107de38ea3541d1e0833b7485469a4626dd443c042339c7249d59f"
  license "MIT"

  def install
    bin.install "rs-fortune"
    generate_completions_from_executable(bin/"rs-fortune", "--completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rs-fortune -h")
  end
end
