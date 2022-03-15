class Sc < Formula
  desc "Spreadsheet Calculator"
  homepage "https://github.com/n-t-roff/sc"
  url "https://github.com/n-t-roff/sc/archive/refs/tags/7.16_1.1.2.tar.gz"
  version "7.16_1.1.2"
  sha256 "1802c9d3d60dac85feb783adf967bc0d2fd7e5f592d9d1df15e4e87d83efcf14"

  def install
    system "./configure"
    system "make"

    inreplace "sc.1", "/usr/local/share", opt_share/"doc"

    bin.install "sc", "psc", "scqref"
    man1.install "sc.1", "psc.1", "scqref.1"
    doc.install "tutorial.sc"
  end

  test do
    system "true"
  end
end
