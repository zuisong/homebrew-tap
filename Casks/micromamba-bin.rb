cask "micromamba-bin" do
  arch arm: "arm64", intel: "64"

  version "2.0.2-0"
  sha256 arm:   "d1944afd8a5f0c1c2d6b0806c1c73b7122729ccf927efb8811e7f4afea26a09f",
         intel: "e8957b2f1271de812605e090006925d03cdf42c5fde4b08a7722031c2b4bd28e"

  url "https://github.com/mamba-org/micromamba-releases/releases/download/#{version}/micromamba-osx-#{arch}.tar.bz2"
  name "micromamba"
  desc "Fast Cross-Platform Package Manager"
  homepage "https://github.com/mamba-org/mamba"

  binary "bin/micromamba", target: "micromamba"
end
