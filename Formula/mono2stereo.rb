class Mono2stereo < Formula
  desc ""
  homepage ""
  url "https://github.com/kunichiko/MS2109-mono-to-stereo-mac/archive/1.0.1.tar.gz"
  sha256 "764fe19ff2ad19cb60b592c59e46a916a38d60061185f368fe2062fb93efa96e"
  license "MIT"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

end
