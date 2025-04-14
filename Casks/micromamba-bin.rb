cask "micromamba-bin" do
  arch arm: "arm64", intel: "64"

  version "2.1.0-0"
  sha256 arm:   "6ba982e0c11f12fd5fa151aa8be10de0b749f9fab7af6e62cdcd4eb0c9b61b0d",
         intel: "9f482294ebf6927f46feaa560278f30565006ce76e61ec4a3af15aafb386f687"

  url "https://github.com/mamba-org/micromamba-releases/releases/download/#{version}/micromamba-osx-#{arch}.tar.bz2"
  name "micromamba"
  desc "Fast Cross-Platform Package Manager"
  homepage "https://github.com/mamba-org/mamba"

  binary "bin/micromamba", target: "micromamba"
end
