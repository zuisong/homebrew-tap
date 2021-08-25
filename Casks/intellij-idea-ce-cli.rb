cask "intellij-idea-ce-cli" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/zuisong"
  name "intellij-idea-ce-cli"
  desc "IntelliJ IDEA CE commnd line tool"
  homepage "https://github.com/zuisong"

  shimscript = "#{staged_path}/idea-ce.wapper.sh"
  depends_on cask: "intellij-idea-ce"

  binary shimscript, target: "idea-ce"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      open -na "#{appdir}/IntelliJ IDEA CE.app" --args "$@"
    EOS
  end
end
