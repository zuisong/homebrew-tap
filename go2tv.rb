class Go2tv < Formula
  desc "Cast your media files to UPnP/DLNA Media Renderers and Smart TVs"
  homepage "https://github.com/alexballas/go2tv"
  url "https://github.com/alexballas/go2tv/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "60e8aae8d7109920ef32f1870adcd50b6d6b6ce41b0bbcf66e3de88ceecc772b"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags="-s -w -X main.build=#{Time.now.utc.iso8601} -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "-o", "#{bin}/go2tv", "cmd/go2tv/go2tv.go"
  end

  test do
    system "#{bin}/go2tv", "-h"
  end
end
