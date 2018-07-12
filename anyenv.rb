class Anyenv < Formula
  desc "[anyenv] all in one for **env"
  homepage "https://github.com/riywo/anyenv"
  head "https://github.com/riywo/anyenv.git"

  def install
    inreplace "libexec/anyenv", 'ANYENV_ROOT="${HOME}/.anyenv"', %Q(ANYENV_ROOT="#{prefix}")
    prefix.install Dir["*"]

    if build.with? "completions"
      bash_completion.install "completions/anyenv.bash"
      fish_completion.install "completions/anyenv.fish"
      zsh_completion.install "completions/anyenv.zsh"
    end
  end

  def caveats; <<~EOS
    To enable anyenv, add below code to your ~/.*shrc:
        export PATH="$(anyenv root)/bin:$PATH"
        eval "$(anyenv init -)"
    EOS
  end

  test do
    shell_output(%Q(eval "$(#{bin}/anyenv init -)" && anyenv version))
  end
end
