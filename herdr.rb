class Herdr < Formula
  desc "Agent multiplexer that lives in your terminal"
  homepage "https://herdr.dev"
  url "https://github.com/ogulcancelik/herdr/releases/download/v0.6.2/herdr-macos-aarch64"
  version "0.6.2"
  sha256 "4cf22522e31ed386312551e71d4c5ff90ad84fbf066207a0554c6bba6bfa010e"
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
