class MicromambaBin < Formula
  desc "Fast Cross-Platform Package Manager"
  homepage "https://github.com/mamba-org/mamba"
  url "https://api.anaconda.org/download/conda-forge/micromamba/1.4.5/osx-arm64/micromamba-1.4.5-0.tar.bz2"
  version "1.4.5"
  sha256 "250d00499ac00207da4cb7a9969e6ceac0ddd3debffb9a3f0fa3dedf560d8e76"
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
