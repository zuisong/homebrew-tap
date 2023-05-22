class FortuneGo < Formula
  desc "Go version of Fortune program"
  homepage "https://github.com/bmc/fortune-go"
  url "https://github.com/bmc/fortune-go.git",
  revision: "a6a1cca25a5c984169ff5191701e65b5b995521f"
  version "0.0.0"
  license "MIT"
  head "https://github.com/bmc/fortune-go.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "fortune.go"
  end

  test do
    (testpath/"fortune-file").write <<~EOS
      Hello Fortune
    EOS
    output = shell_output("#{bin}/fortune-go #{testpath}/fortune-file")
    assert_equal "Hello Fortune", output.strip
  end
end
