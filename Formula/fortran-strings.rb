class Fortranstrings < Formula
  desc "Fortran Library for common string manipulations"
  homepage "https://github.com/NOAA-MDL/fortran-strings"
  url "https://github.com/NOAA-MDL/libtdlpack/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "af2834bfbf08577f74ea5d45562740a0d38b1bf660da6b34fffd01c21f66eab6"
  license :public_domain

  depends_on "cmake" => :build
  depends_on "gfortran" => :build
  depends_on "pkg-config" => :build

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "-DCMAKE_PREFIX_PATH=#{prefix}", "-DBUILD_TESTING=OFF", "."
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end
