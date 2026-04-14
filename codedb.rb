class Codedb < Formula
  desc "Code intelligence server and MCP server"
  homepage "https://github.com/justrach/codedb"
  url "https://github.com/justrach/codedb/releases/download/v0.2.57/codedb-darwin-arm64"
  sha256 "69897f3340ccc0dad69328dc5f0ba15f8aea445064bc24fafed95049e3706205"
  version "0.2.57"
  license "BSD-3-Clause"

  def install
    bin.install "codedb-darwin-arm64" => "codedb"
  end

  test do
    assert_match "code intelligence server", shell_output("#{bin}/codedb --help")
  end
end
