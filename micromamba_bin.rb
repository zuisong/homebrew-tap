class MicromambaBin < Formula
  desc "Fast Cross-Platform Package Manager"
  homepage "https://github.com/mamba-org/mamba"
  url "https://api.anaconda.org/download/conda-forge/micromamba/1.5.5/osx-arm64/micromamba-1.5.5-0.tar.bz2"
  version "1.5.5"
  sha256 "922db55e3b069d949e87e5c4dfe4452f31c1b5bccf61e7a0d04492087b44c292"
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
