class ZsMise < Formula
  desc "Dev tools, env vars, task runner"
  homepage "https://mise.en.dev"
  url "https://github.com/jdx/mise/releases/download/v2026.4.24/mise-v2026.4.24-macos-arm64.tar.xz"
  version "2026.4.24"
  sha256 "3940cbacfa7b3015ff346fc3c9c4260a014104926b3d5466a1a2865003e8eb85"
  license "MIT"

  depends_on "usage"

  def install
    bin.install "bin/mise"
    generate_completions_from_executable(bin/"mise", "completions")
    man1.install "man/man1/mise.1"
    lib.mkpath
    touch lib/".disable-self-update"
  end

  test do
    assert_match "mise", shell_output("#{bin}/mise -h")
  end
end
