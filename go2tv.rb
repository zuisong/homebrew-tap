class Go2tv < Formula
  desc "Cast your media files to UPnP/DLNA Media Renderers and Smart TVs"
  homepage "https://github.com/alexballas/go2tv"
  url "https://github.com/alexballas/go2tv/archive/v1.15.0.tar.gz"
  sha256 "e2b42462f6c5a2f446faf1fe54983018ae8eaeff86f7df8c8076c15486ded851"
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
    system "#{bin}/go2tv", "-h"
  end
end
