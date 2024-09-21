cask "micromamba-bin" do
  arch arm: "arm64", intel: "64"

  version "1.5.10-0"
  sha256 arm:   "e34c48f3c7c3c0855ea9c5f82ad6ffb316daecbddad3d9032c2a2d782501d7b0",
         intel: "3b5dc32ed12d964392a4cf869a3d5dd0aaa7f5fb917a7c0831c35ddd323438ea"

  url "https://github.com/mamba-org/micromamba-releases/releases/download/#{version}/micromamba-osx-#{arch}.tar.bz2"
  name "micromamba"
  desc "Fast Cross-Platform Package Manager"
  homepage "https://github.com/mamba-org/mamba"

  binary "bin/micromamba", target: "micromamba"
end
