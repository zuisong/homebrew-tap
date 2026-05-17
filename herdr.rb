class Herdr < Formula
  desc "Agent multiplexer that lives in your terminal"
  homepage "https://herdr.dev"
  url "https://github.com/ogulcancelik/herdr/releases/download/v0.5.9/herdr-macos-aarch64"
  version "0.5.9"
  sha256 "8b796f3717862aae81daae5b9d6c1f1929d758aacea0b4433bbf5300ed2ca6ac"
  license "AGPL-3.0-or-later"

  on_macos do
    depends_on arch: :arm
  end

  def install
    bin.install "herdr-macos-aarch64" => "herdr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/herdr --version")
  end
end
