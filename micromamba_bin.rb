class MicromambaBin < Formula
  desc "Fast Cross-Platform Package Manager"
  homepage "https://github.com/mamba-org/mamba"
  url "https://api.anaconda.org/download/conda-forge/micromamba/1.5.8/osx-arm64/micromamba-1.5.8-0.tar.bz2"
  version "1.5.8"
  sha256 "d62bdc8179a485b931007d623f299ef307cdfba45438fc1f4a8d055ddc232ee1"
  license "BSD-3-Clause"

  livecheck do
    url "https://micro.mamba.pm/api/micromamba/osx-arm64/latest"
    strategy :header_match do |headers|
      headers["location"][/micromamba-([\d.]+)-\d+\.tar\..+/i, 1]
    end
  end

  def install
    bin.install "bin/micromamba"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micromamba -h")
  end
end
