class DingtalkWorkspaceCli < Formula
  desc "Dingtalk Workspace CLI"
  homepage "https://github.com/DingTalk-Real-AI/dingtalk-workspace-cli"
  url "https://registry.npmjs.org/dingtalk-workspace-cli/-/dingtalk-workspace-cli-1.0.61.tgz"
  sha256 "30ae68c5c73a6f398ab0e6f3fe9bdb60ee8479f8d03d419f5dcebd9d5641288f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(ignore_scripts: false)
    bin.install_symlink libexec.glob("bin/*")
    generate_completions_from_executable(bin/"dws", "completion")
  end
end
