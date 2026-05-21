class Codedb < Formula
  desc "Code intelligence server and MCP server"
  homepage "https://github.com/justrach/codedb"
  url "https://github.com/justrach/codedb/releases/download/v0.2.5815/codedb-darwin-arm64"
  version "0.2.5815"
  sha256 "51164cf9c8b260ee8b8339aa7bb6ddf0db04f027d62d55ac3fab09f9e687d25f"
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
