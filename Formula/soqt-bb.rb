class SoqtBb < Formula
  desc "SoQt package, allowing Coin to be used with Qt"
  homepage "https://bitbucket.org/Coin3D/SoQt"

  # SOURCES
  # url "https://bitbucket.org/rmbianchi/soqt/get/mac-mojave-fix.zip"
  url "https://bitbucket.org/rmbianchi/soqt/downloads/soqt-1b4fe9d-macos-mojave-fix.zip"
  # sha256 ""

  head "https://bitbucket.org/rmbianchi/soqt",
      using: :hg

  # DEPENDENCIES
  bottle do
    root_url "http://atlas-vp1.web.cern.ch/atlas-vp1/sources/bottles"
    sha256 cellar: :any, mojave: "bd7a14105b55d12ba13381eba4961dab5ae95d61e4f9c0538289b8185215430a"
  end

  depends_on "cmake" => :build
  depends_on "qt5"
  depends_on "ric-bianchi/coin3d/coin-bb"

  # BUILD INSTRUCTIONS
  def install
    mkdir "builddir" do
      system "cmake", "..", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end

  # PRE-COMPILED PACKAGES
end
