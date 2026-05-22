class ZsMise < Formula
  desc "Dev tools, env vars, task runner"
  homepage "https://mise.en.dev"
  url "https://github.com/jdx/mise/releases/download/v2026.5.13/mise-v2026.5.13-macos-arm64.tar.xz"
  version "2026.5.13"
  sha256 "1fdfdb71794354e994d16f5cf1ef2ff72f212ab93f2c4a90663b1bc88d7f8831"
  license "MIT"

  depends_on "usage"

  on_macos do
    depends_on arch: :arm
  end

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
