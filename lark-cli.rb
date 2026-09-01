class LarkCli < Formula
  desc "Lark Workspace CLI"
  homepage "https://github.com/larksuite/cli"
  url "https://registry.npmjs.org/@larksuite/cli/-/cli-1.0.92.tgz"
  sha256 "54f25196dd573cb9ada5bace23b83e19d2383586406a0fe5362a4d5bcec13ac5"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(ignore_scripts: false)
    bin.install_symlink libexec.glob("bin/*")
  end
end
