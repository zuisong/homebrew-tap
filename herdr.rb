class Herdr < Formula
  desc "Agent multiplexer that lives in your terminal"
  homepage "https://herdr.dev"
  url "https://github.com/ogulcancelik/herdr/releases/download/v0.5.8/herdr-macos-aarch64"
  version "0.5.8"
  sha256 "bc58d6c18db2a2d05c98db2d45aef84b31d6ecad233241c63ed16af9bba04dfd"
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
