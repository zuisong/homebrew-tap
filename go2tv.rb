class Go2tv < Formula
  desc "Cast your media files to UPnP/DLNA Media Renderers and Smart TVs"
  homepage "https://github.com/alexballas/go2tv"
  url "https://github.com/alexballas/go2tv/archive/v1.9.0.tar.gz"
  sha256 "e364f31647a8a096a931c2bb570311af72dc59a4834a74978e1caf9be9d338ab"
  license "MIT"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on "go" => :build

  def install
    ldflags="-s -w -X main.build=#{Time.now.utc.iso8601} -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "-o", "#{bin}/go2tv", "cmd/go2tv/go2tv.go"
  end

  test do
    system "go2tv", "-h"
  end
end
