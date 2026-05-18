class Herdr < Formula
  desc "Agent multiplexer that lives in your terminal"
  homepage "https://herdr.dev"
  url "https://github.com/ogulcancelik/herdr/releases/download/v0.5.10/herdr-macos-aarch64"
  version "0.5.10"
  sha256 "84aa7f38c835b4eb5aa38c29660813023cf23178e46541c4b9c260712fe52d51"
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
