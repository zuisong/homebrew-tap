cask "micromamba-bin" do
  arch arm: "arm64", intel: "64"

  version "2.0.1-0"
  sha256 arm:   "05a3036b0761baada4f0e26f2a6a189edc301845960f50eb3eb844a543c0cf18",
         intel: "fd7809fff6c1525f0cc4b9f811050a767940dbb7d92330b1094b536032f87113"

  url "https://github.com/mamba-org/micromamba-releases/releases/download/#{version}/micromamba-osx-#{arch}.tar.bz2"
  name "micromamba"
  desc "Fast Cross-Platform Package Manager"
  homepage "https://github.com/mamba-org/mamba"

  binary "bin/micromamba", target: "micromamba"
end
