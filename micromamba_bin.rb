class MicromambaBin < Formula
  desc "Fast Cross-Platform Package Manager"
  homepage "https://github.com/mamba-org/mamba"
  url "https://github.com/mamba-org/micromamba-releases/releases/download/1.5.8-0/micromamba-osx-arm64.tar.bz2"
  version "1.5.8-0"
  sha256 "d62bdc8179a485b931007d623f299ef307cdfba45438fc1f4a8d055ddc232ee1"
  license "BSD-3-Clause"

  def install
    bin.install "bin/micromamba"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micromamba -h")
  end
end
