class Go2tv < Formula
  desc "Cast your media files to UPnP/DLNA Media Renderers and Smart TVs"
  homepage "https://github.com/alexballas/go2tv"
  url "https://github.com/alexballas/go2tv/archive/refs/tags/v1.19.0.tar.gz"
  sha256 "c1f70bb60bb3974d3fcee57dec7fc8378da1ec5d6f6a1aa6ae59211149eb75f1"
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
