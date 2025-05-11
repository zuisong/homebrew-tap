cask "micromamba-bin" do
  arch arm: "arm64", intel: "64"

  version "2.1.1-0"
  sha256 arm:   "008ad98af6420d162611fcd7894c373b97d1fda3e3576f69d89d72309d0b54d6",
         intel: "810b045e10c7d30aab3202df3ebfe9fa9f98b0144f7d4bb17c41472d3208424e"

  url "https://github.com/mamba-org/micromamba-releases/releases/download/#{version}/micromamba-osx-#{arch}.tar.bz2"
  name "micromamba"
  desc "Fast Cross-Platform Package Manager"
  homepage "https://github.com/mamba-org/mamba"

  binary "bin/micromamba", target: "micromamba"
end
