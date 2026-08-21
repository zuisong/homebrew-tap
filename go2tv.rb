class Go2tv < Formula
  desc "Cast your media files to UPnP/DLNA Media Renderers and Smart TVs"
  homepage "https://github.com/alexballas/go2tv"
  url "https://github.com/alexballas/go2tv/archive/refs/tags/v2.5.0.tar.gz"
  sha256 "6e28cab4545975a118be1a1baeb2e40a1029ce1c23b6e868c0faac5c0d14912b"
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
