class ZsMise < Formula
  desc "Dev tools, env vars, task runner"
  homepage "https://mise.en.dev"
  url "https://github.com/jdx/mise/releases/download/v2026.7.6/mise-v2026.7.6-macos-arm64.tar.xz"
  version "2026.7.6"
  sha256 "c5040239c63bfe2708b2dfc9b4facd06b34c6d8fc1759c76f39c1d16c62b7d01"
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
