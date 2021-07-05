class Coin < Formula
  desc "Implementation of the Open Inventor API"
  homepage "https://grey.colorado.edu/coin3d/index.html"

  # SOURCES
  url "https://www.qat.pitt.edu/Coin-4.0.0a.tar.gz"
  sha256 "4ce5954af6e340281cf77bedae2d654f673829df0bb1e18a8f973341382db435"

  # DEPENDENCIES
  # depends_on "ric-bianchi/coin3d/simage" # TODO: should still Coin be compiled with simage support nowadays?

  # COMPILATION INSTRUCTIONS
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    rebuild 2
    sha256 cellar: :any, mojave:      "67147081934ff71987497d36c147e10a137c92635f55e019a81473275e5e33c7"
    sha256 cellar: :any, high_sierra: "54cc704a3ce36fe8c39cb7c7da51c56a95711b74e632d1b5269e0216fe0efde8"
  end

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--disable-framework",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  # PRE-COMPILED PACKAGES (Bottles)
end
