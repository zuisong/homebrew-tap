class Codedb < Formula
  desc "Code intelligence server and MCP server"
  homepage "https://github.com/justrach/codedb"
  url "https://github.com/justrach/codedb/releases/download/v0.2.58181/codedb-darwin-arm64"
  version "0.2.58181"
  sha256 "c16fa2a2a6be4eaea0b5a0b98f07113ac243b85a393baabac348266d41ef7096"
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
