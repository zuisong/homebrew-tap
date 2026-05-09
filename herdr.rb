class Herdr < Formula
  desc "Agent multiplexer that lives in your terminal"
  homepage "https://herdr.dev"
  url "https://github.com/ogulcancelik/herdr/releases/download/v0.5.5/herdr-macos-aarch64"
  version "0.5.5"
  sha256 "ec02eedb259324c5062243447e3892a5606410bdd01a89d9e6d13e1d0ec8ce9a"
  license "AGPL-3.0"

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
