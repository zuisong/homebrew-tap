class ZsMise < Formula
  desc "Dev tools, env vars, task runner"
  homepage "https://mise.en.dev"
  url "https://github.com/jdx/mise/releases/download/v2026.9.11/mise-v2026.9.11-macos-arm64.tar.xz"
  sha256 "dfb81fd00fed36eb0ca86936392ac40c5dba73a10e7297af30092bea5ecda845"
  license "MIT"

  livecheck do
    url "https://github.com/jdx/mise/releases"
    strategy :latest
  end

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
