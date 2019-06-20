class Soqt5 < Formula
  desc "The SoQt package updated from the orginal by Joe Boudreau"
  homepage "qat.pitt.edu"

  # SOURCES
  url "http://atlas-vp1.web.cern.ch/atlas-vp1/sources/soqt5-1.2.2.zip"
  sha256 "7e35ee9ede8100f83e268e11ead719baf9da129d4f2e67a2db5eb16aa47697bd"

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
    sha256 "10055e40d2b89c69fd7fe38a5f669a49115abee9fa0789e1b81fa5861e737d5b" => :mojave
  end

end
