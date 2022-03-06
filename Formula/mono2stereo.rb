class Mono2stereo < Formula
  desc ""
  homepage ""
  url "https://github.com/kunichiko/MS2109-mono-to-stereo-mac/archive/0.9.1.tar.gz"
  sha256 "8d08a7d686b4437cf17373b2dc2ecf77f9684dbd8a56358b0d726eb5ff7d6194"
  license ""

  def install
    system "make", "install", "prefix=#{prefix}"
  end

end
