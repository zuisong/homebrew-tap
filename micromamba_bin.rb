class MicromambaBin < Formula
  desc "Fast Cross-Platform Package Manager"
  homepage "https://github.com/mamba-org/mamba"
  url "https://api.anaconda.org/download/conda-forge/micromamba/1.5.1/osx-arm64/micromamba-1.5.1-0.tar.bz2"
  version "1.5.1"
  sha256 "0adfe00a10255fc4e6720f2db7a2f19d8dc6d150eeb57d103d10162f3f7acf64"
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
