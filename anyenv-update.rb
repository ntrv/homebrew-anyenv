class AnyenvUpdate < Formula
  desc "Anyenv subcommand to update all **env and all plugins"
  homepage "https://github.com/znz/anyenv-update"
  url "https://github.com/znz/anyenv-update/archive/b6cefdb4aeaf930a9e576c515cd557f3acf3ab91.tar.gz"
  version "b6cefdb"
  sha256 "e3bb77358deb67d67a67df834342d776c4da0545793e72ebe71a2948985a5ba0"
  head "https://github.com/znz/anyenv-update.git"

  depends_on "anyenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    shell_output(%Q(test -x "#{bin}/anyenv-update"))
  end
end
