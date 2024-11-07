class EsopipeUvesAll < Formula
  desc "ESO UVES instrument pipeline (demo data)"
  homepage "https://www.eso.org/sci/software/pipelines/"
  url "https://ftp.eso.org/pub/dfs/pipelines/instruments/uves/uves-demo-reflex-4.5.tar.gz"
  sha256 "cf9197ac0693e01c5a37845ef123ec0d7c2be8b7244ef1b9ac58ce7f2858b8ed"
  license "GPL-2.0-or-later"

  livecheck do
    url :homepage
    regex(/href=.*?uves-demo-reflex-(\d+(?:[.-]\d+)+)\.t/i)
  end

  depends_on "esopipe-uves"

  def install
    (prefix/"share/esopipes/datademo").install Dir["*"]
  end

  test do
    system "true"
  end
end
