cask "intellij-idea-cli" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/zuisong"
  name "intellij-idea-cli"
  desc "IntelliJ IDEA commnd line tool"
  homepage "https://github.com/zuisong"

  shimscript = "#{staged_path}/idea.wapper.sh"
  livecheck do
    skip "no version"
  end

  depends_on cask: "intellij-idea"

  binary shimscript, target: "idea"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      open -na "#{appdir}/IntelliJ IDEA.app" --args "$@"
    EOS
  end
end
