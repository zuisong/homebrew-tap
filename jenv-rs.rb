class JenvRs < Formula
  desc "Drop-in jenv reimplementation in Rust, with native Windows support"
  homepage "https://github.com/zuisong/jenv-rs"
  url "https://github.com/zuisong/jenv-rs/releases/download/v0.1.0/jenv-aarch64-apple-darwin.tar.gz"
  sha256 "7a6f6bc924d7ad807b3ef04b84a6a87a4ffbb3a8b6980e8cfd3e2cd85aaa2842"
  license "MIT"

  # Both install a `jenv` executable and both own `$JENV_ROOT/versions` and
  # `$JENV_ROOT/shims`. A shim written by one is a hard link to that build, so
  # letting the two coexist on one PATH means `java` resolves through whichever
  # `jenv` rehash happened to find first, and `jenv version` disagrees with the
  # shims that are actually there. Homebrew refuses to hold both.
  conflicts_with "jenv", because: "both install a `jenv` executable and both own $JENV_ROOT/shims"

  def install
    bin.install "jenv"
    # The shell is a positional argument, so no shell_parameter_format: this
    # runs `jenv completions bash|zsh|fish` and installs each script itself.
    generate_completions_from_executable(bin/"jenv", "completions")
  end

  def caveats
    <<~EOS
      jenv-rs is a drop-in replacement for the original jenv, not a companion
      to it. It installs its own `jenv` and does not support jenv's plugins.
      Run `jenv skill` for the full operating reference.

      Homebrew refuses to install this alongside homebrew-core's jenv. It
      cannot see a jenv you installed some other way, so if one is already on
      your PATH — a cargo install, or a copy in /usr/local/bin — remove it
      first. Two jenvs on one PATH will disagree about $JENV_ROOT/shims, and
      `java` will resolve through whichever one rehash found first.

      The shell setup is not written for you:

        eval "$(jenv init -)"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jenv --version")
    # Proves the subcommand dispatch works, not just that the file is runnable.
    assert_includes shell_output("#{bin}/jenv commands").split, "add"
  end
end
