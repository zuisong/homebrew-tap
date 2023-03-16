cask "pocketbase" do
  version "0.13.4"

  on_arm do
    url "https://github.com/pocketbase/pocketbase/releases/download/v#{version}/pocketbase_#{version}_darwin_arm64.zip"
    sha256 "56b7a35d0ab8aafb678dbb545bd2f85f0240714bb19e725c603b727cf3813632"
  end
  on_intel do
    url "https://github.com/pocketbase/pocketbase/releases/download/v#{version}/pocketbase_#{version}_darwin_amd64.zip"
    sha256 "b0cbce4850859e75e8c64a46672c8cf71d8c01ceb024faecb105108d507e7388"
  end

  name "PocketBase"
  desc "Platform for building and running decentralized applications"
  homepage "https://github.com/pocketbase/pocketbase"

  binary "pocketbase"
end
