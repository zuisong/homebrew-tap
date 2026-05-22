class Codedb < Formula
  desc "Code intelligence server and MCP server"
  homepage "https://github.com/justrach/codedb"
  url "https://github.com/justrach/codedb/releases/download/v0.2.5817/codedb-darwin-arm64"
  version "0.2.5817"
  sha256 "dea15a25a088f3b05d620e7a119377d09703c4e73512e35479819542c6c763c6"
  license "BSD-3-Clause"

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
