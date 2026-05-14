class ZsMise < Formula
  desc "Dev tools, env vars, task runner"
  homepage "https://mise.en.dev"
  url "https://github.com/jdx/mise/releases/download/v2026.5.7/mise-v2026.5.7-macos-arm64.tar.xz"
  version "2026.5.7"
  sha256 "e3835446d5e120c7fef89ff5a98638b81ac3051037749df6e06574fe040aa3e9"
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
