class AnyenvGit < Formula
  desc "`anyenv git` command to run `git` in all repos of **env and plugins"
  homepage "https://github.com/znz/anyenv-git"
  url "https://github.com/znz/anyenv-git/archive/e091c9428c60af58cc071f2ec84a0f8276e809db.tar.gz"
  version "e091c94"
  sha256 "a8e8828e1a49eb3d47966375363877f756d6eb69a13fb99a7fd5d13cd54937b1"
  head "https://github.com/znz/anyenv-git.git"

  depends_on "anyenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    shell_output(%Q(test -x "#{bin}/anyenv-git"))
  end
end
