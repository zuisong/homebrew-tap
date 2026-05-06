class ZsMise < Formula
  desc "Dev tools, env vars, task runner"
  homepage "https://mise.en.dev"
  url "https://github.com/jdx/mise/releases/download/v2026.5.1/mise-v2026.5.1-macos-arm64.tar.xz"
  version "2026.5.1"
  sha256 "622d288771565cf12f9d0da57a814271a98fba0c8a32df7dea7b770a60fab8a7"
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
