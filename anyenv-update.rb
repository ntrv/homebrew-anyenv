class AnyenvUpdate < Formula
  desc "Anyenv subcommand to update all **env and all plugins"
  homepage "https://github.com/znz/anyenv-update"
  head "https://github.com/znz/anyenv-update.git"

  depends_on "anyenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    shell_output(%Q(test -x "#{bin}/anyenv-update"))
  end
end
