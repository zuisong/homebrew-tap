class Codedb < Formula
  desc "Code intelligence server and MCP server"
  homepage "https://github.com/justrach/codedb"
  url "https://github.com/justrach/codedb/releases/download/v0.2.5860/codedb-darwin-arm64"
  sha256 "fd8568a0bd9cb73583cf20b6f0a817cef44795b250a98391419ef7c8049f7518"
  license "BSD-3-Clause"
  version_scheme 1

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    depends_on arch: :arm
  end

  def install
    bin.install "codedb-darwin-arm64" => "codedb"
  end

  test do
    assert_match "code intelligence server", shell_output("#{bin}/codedb --help")
  end
end
