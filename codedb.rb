class Codedb < Formula
  desc "Code intelligence server and MCP server"
  homepage "https://github.com/justrach/codedb"
  url "https://github.com/justrach/codedb/releases/download/v0.2.5812/codedb-darwin-arm64"
  version "0.2.5812"
  sha256 "0803247b5d8b42fc0cb573a9a59ace52cfc076217092e609590d45af359defab"
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
