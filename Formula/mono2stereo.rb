class Mono2stereo < Formula
  desc ""
  homepage ""
  url "https://github.com/kunichiko/MS2109-mono-to-stereo-mac/archive/1.0.0.tar.gz"
  sha256 "42f53303cccdcff381dc561b15d935f26aa8f1cf71aaf6aad255f3173c8c116a"
  license "MIT"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

end
