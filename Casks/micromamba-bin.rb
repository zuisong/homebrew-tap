cask "micromamba-bin" do
  arch arm: "arm64", intel: "64"

  version "1.5.8-0"
  sha256 arm:   "d62bdc8179a485b931007d623f299ef307cdfba45438fc1f4a8d055ddc232ee1",
         intel: "a520f5ae4ed6667c489f9b8635afe6632da73bdd3039d62ff91b47aeced3e4a3"

  url "https://github.com/mamba-org/micromamba-releases/releases/download/#{version}/micromamba-osx-#{arch}.tar.bz2"
  name "micromamba"
  desc "Fast Cross-Platform Package Manager"
  homepage "https://github.com/mamba-org/mamba"

  binary "bin/micromamba", target: "micromamba"
end
