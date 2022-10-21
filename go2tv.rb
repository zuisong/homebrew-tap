class Go2tv < Formula
  desc "Cast your media files to UPnP/DLNA Media Renderers and Smart TVs"
  homepage "https://github.com/alexballas/go2tv"
  url "https://github.com/alexballas/go2tv/archive/v1.13.0.tar.gz"
  sha256 "d5841839c796930a4a0c72a76f4b0ae6ad20b956af8003b287c142eb008fe6d1"
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
