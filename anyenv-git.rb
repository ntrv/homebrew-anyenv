class AnyenvGit < Formula
  desc "`anyenv git` command to run `git` in all repos of **env and plugins"
  homepage "https://github.com/znz/anyenv-git"
  head "https://github.com/znz/anyenv-git.git"

  depends_on "anyenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    shell_output(%Q(test -x "#{bin}/anyenv-git"))
  end
end
