class Sc < Formula
  desc "Spreadsheet Calculator"
  homepage "https://github.com/n-t-roff/sc"
  url "https://github.com/n-t-roff/sc/archive/refs/tags/7.16_1.1.2.tar.gz"
  version "7.16_1.1.2"
  sha256 "1802c9d3d60dac85feb783adf967bc0d2fd7e5f592d9d1df15e4e87d83efcf14"

  bottle do
    root_url "https://github.com/Amar1729/homebrew-sc/releases/download/sc-7.16_1.1.2"
    sha256 cellar: :any_skip_relocation, big_sur:      "1f1c52bb1bf52fcd518bdfbe55af72fdf1edf3eaa27cf05e68f30950d1ecf668"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "396886941dd09f02b9b5161b29fabcf8a2c6285de69b0643be39b3de93aa2cb8"
  end

  uses_from_macos "ncurses"

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
