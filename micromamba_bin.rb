class MicromambaBin < Formula
  desc "Fast Cross-Platform Package Manager"
  homepage "https://github.com/mamba-org/mamba"
  url "https://api.anaconda.org/download/conda-forge/micromamba/1.4.7/osx-arm64/micromamba-1.4.7-0.tar.bz2"
  version "1.4.7"
  sha256 "52f19a26f8a999776ca99508a6622637991e13446b003af09d58188ce92a04e2"
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
