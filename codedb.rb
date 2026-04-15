class Codedb < Formula
  desc "Code intelligence server and MCP server"
  homepage "https://github.com/justrach/codedb"
  url "https://github.com/justrach/codedb/releases/download/v0.2.572/codedb-darwin-arm64"
  version "0.2.572"
  sha256 "13dd0a6047efee1cecfa684690352b9c9b9a24a10f253f8e259bc6272b15c1c4"
  license "BSD-3-Clause"

  def install
    bin.install "codedb-darwin-arm64" => "codedb"
  end

  test do
    assert_match "code intelligence server", shell_output("#{bin}/codedb --help")
  end
end
