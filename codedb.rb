class Codedb < Formula
  desc "Code intelligence server and MCP server"
  homepage "https://github.com/justrach/codedb"
  url "https://github.com/justrach/codedb/releases/download/v0.2.5854/codedb-darwin-arm64"
  sha256 "92d71bb064d81ff1844103fe4b8748af6ff0d8394a6d43915127df534556a7d2"
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
