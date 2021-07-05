class CoinBb < Formula
  desc "SoQt package, allowing Coin to be used with Qt"
  homepage "https://bitbucket.org/Coin3D/coin"

  # SOURCES
  url "https://bitbucket.org/Coin3D/coin/downloads/coin-4.0.0-src.zip"
  sha256 "d4911625e585a3da21428d1207ae81625ba792591fe0b609ad46766b954ad516"

  head "https://bitbucket.org/Coin3D/coin",
      using: :hg

  # DEPENDENCIES
  bottle do
    root_url "http://atlas-vp1.web.cern.ch/atlas-vp1/sources/bottles"
    sha256 cellar: :any, mojave: "8fffc573cf7b2f893cbd751ec41803587f87fab6435e7d29c67f8057d0d142b9"
  end

  depends_on "cmake" => :build

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
