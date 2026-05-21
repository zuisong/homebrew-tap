class Herdr < Formula
  desc "Agent multiplexer that lives in your terminal"
  homepage "https://herdr.dev"
  url "https://github.com/ogulcancelik/herdr/releases/download/v0.6.0/herdr-macos-aarch64"
  version "0.6.0"
  sha256 "3fbce409b1dc8b33d859e55d83ae8d4502bb56823998f338e960f033e5da419b"
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
