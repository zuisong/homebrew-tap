class ZsMise < Formula
  desc "Dev tools, env vars, task runner"
  homepage "https://mise.en.dev"
  url "https://github.com/jdx/mise/releases/download/v2026.5.11/mise-v2026.5.11-macos-arm64.tar.xz"
  version "2026.5.11"
  sha256 "78bc28455c49dd6354c1bb1812735ee7fe7108282984d85546c953a1cd2059c9"
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
