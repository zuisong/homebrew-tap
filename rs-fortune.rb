class RsFortune < Formula
  desc "Rust version of fortune"
  homepage "https://github.com/zuisong/rs-fortune"
  url "https://github.com/zuisong/rs-fortune/releases/download/v0.5.1/rs-fortune-universal-apple-darwin.tar.gz"
  sha256 "d71ba5668c4be965fa70defa72e1bcdab9792edbe59f030c446eda4ed4dfd067"
  license "MIT"

  def install
    bin.install "rs-fortune"
    generate_completions_from_executable(bin/"rs-fortune", "--completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rs-fortune -h")
  end
end
