cask "micromamba-bin" do
  arch arm: "arm64", intel: "64"

  version "2.0.2-2"
  sha256 arm:   "7eecccd9e57f7d3a0c118b5b9e93cec514ad33903ae182878733a178e3ef5f2d",
         intel: "8f105c0022f655e94f5344a76f12f6b06ec2031f3e675089ba39a7d2b38f25ef"

  url "https://github.com/mamba-org/micromamba-releases/releases/download/#{version}/micromamba-osx-#{arch}.tar.bz2"
  name "micromamba"
  desc "Fast Cross-Platform Package Manager"
  homepage "https://github.com/mamba-org/mamba"

  binary "bin/micromamba", target: "micromamba"
end
