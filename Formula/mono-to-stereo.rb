# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class MonoToStereo < Formula
  desc ""
  homepage ""
  url "https://github.com/kunichiko/MS2109-mono-to-stereo-mac/archive/0.9.0.tar.gz"
  sha256 "0dab36aeef31456d4b951ff85a782d3a537c6263b301365b08878bc44a55d222"
  license ""

  # depends_on "cmake" => :build

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

end
