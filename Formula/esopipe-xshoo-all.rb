class EsopipeXshooAll < Formula
  desc "ESO XSHOOTER instrument pipeline (demo data)"
  homepage "https://www.eso.org/sci/software/pipelines/"
  url "https://ftp.eso.org/pub/dfs/pipelines/instruments/xshooter/xshoo-demo-reflex-1.3.tar.gz"
  sha256 "e3307f8fe16559e211dfff643665ed28a10182e4244f9fe3f85c9f13eed460a5"
  license "GPL-2.0-or-later"

  livecheck do
    url :homepage
    regex(/href=.*?xshoo-demo-reflex-(\d+(?:[.-]\d+)+)\.t/i)
  end

  depends_on "esopipe-xshoo"

  def install
    (prefix/"share/esopipes/datademo/xshoo").install Dir["*"]
  end

  def post_install
    system "brew", "cleanup", "--prune=all", "esopipe-xshoo-all"
  end

  test do
    system "true"
  end
end
