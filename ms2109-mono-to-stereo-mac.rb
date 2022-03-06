class Ms2109MonoToStereoMac < Formula
  desc "Convert the MS2109's mono sound input stream to stereo one on the macOS. This project is inspired by ToadKing's mono-to-stereo project ( https://github.com/ToadKing/mono-to-stereo )."
  homepage ""
  url "https://github.com/kunichiko/MS2109-mono-to-stereo-mac/archive/0.9.0.tar.gz"
  sha256 "0dab36aeef31456d4b951ff85a782d3a537c6263b301365b08878bc44a55d222"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  depends_on :xcode => "13.2.1"
end
