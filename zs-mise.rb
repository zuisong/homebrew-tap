class ZsMise < Formula
  desc "Dev tools, env vars, task runner"
  homepage "https://mise.en.dev"
  url "https://github.com/jdx/mise/releases/download/v2026.5.15/mise-v2026.5.15-macos-arm64.tar.xz"
  version "2026.5.15"
  sha256 "29fb971dc54287960e0a8f58326d81c0abe198be5e08fccacc234ef04bbc51f4"
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
