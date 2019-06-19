class Soqt5 < Formula
  desc "The SoQt package updated from the orginal by Joe Boudreau"
  homepage "qat.pitt.edu"

  # SOURCES
  url "http://atlas-vp1.web.cern.ch/atlas-vp1/sources/soqt5-1.2.1.zip"
  sha256 "e9caa7ec9871b9c2c3d05dc8ce44145f0fc8f93910b37251bd980104d2b03cb4"

  # DEPENDENCIES
  depends_on "qt5"
  depends_on "ric-bianchi/coin3d/coin"

  # COMPILATION INSTRUCTIONS
  def install
    ENV.deparallelize
    system "cd src/Inventor/Qt && qmake PREFIX=#{prefix} LIBS=-L/usr/local/lib QMAKE_STRIP="
    system "cd src/Inventor/Qt && make install"
  end

  # PRE-COMPILED PACKAGES ("Bottles")
  bottle do
    root_url "http://atlas-vp1.web.cern.ch/atlas-vp1/sources/bottles"
    cellar :any
    sha256 "75fffd9bad18f19cc58edea1bbd0b65a74cb2314a770b2f72fb2d26da5dcd632" => :mojave
  end

end
