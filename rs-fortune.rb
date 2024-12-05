class RsFortune < Formula
  desc "Rust version of fortune"
  homepage "https://github.com/zuisong/rs-fortune"
  url "https://github.com/zuisong/rs-fortune/releases/download/v0.9.0/rs-fortune-universal-apple-darwin.tar.gz"
  sha256 "7f861c970d593bc4c5374ac818588e90824e86a28eba208d30c3dbd48970f834"
  license "MIT"

  def install
    bin.install "rs-fortune"
    generate_completions_from_executable(bin/"rs-fortune", "completions", "--shell")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rs-fortune -h")
  end
end
