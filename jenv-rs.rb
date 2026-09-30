class JenvRs < Formula
  desc "Drop-in jenv reimplementation in Rust, with native Windows support"
  homepage "https://github.com/zuisong/jenv-rs"
  url "https://github.com/zuisong/jenv-rs/releases/download/v0.1.0/jenv-aarch64-apple-darwin.tar.gz"
  sha256 "7a6f6bc924d7ad807b3ef04b84a6a87a4ffbb3a8b6980e8cfd3e2cd85aaa2842"
  license "MIT"

  def install
    bin.install "jenv"
    # The shell is a positional argument, so no shell_parameter_format: this
    # runs `jenv completions bash|zsh|fish` and installs each script itself.
    generate_completions_from_executable(bin/"jenv", "completions")
  end

  def caveats
    <<~EOS
      Add the shell setup to your profile, it is not written for you:

        eval "$(jenv init -)"

      jenv-rs is not the original jenv and does not support its plugins.
      Run `jenv skill` for the full operating reference.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jenv --version")
    # Proves the subcommand dispatch works, not just that the file is runnable.
    assert_includes shell_output("#{bin}/jenv commands").split, "add"
  end
end
