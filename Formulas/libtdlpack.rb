class Libtdlpack < Formula
  desc "Fortran Library for reading and writing MDL TDLPACK files."
  homepage "https://github.com/NOAA-MDL/libtdlpack"
  url "https://github.com/NOAA-MDL/libtdlpack/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "c434c7f2cc5641a4924f323e0dd1f38b7120995922c3b43e75e5f414e891e326"
  license :public_domain

  depends_on "cmake" => :build
  depends_on "gcc" => :build
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
