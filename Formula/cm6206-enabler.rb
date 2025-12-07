class Cm6206Enabler < Formula
  desc "Enable audio output on CM6206 USB audio devices for macOS"
  homepage "https://github.com/kunichiko/CM6206-enabler-mac"
  url "https://github.com/kunichiko/CM6206-enabler-mac/archive/refs/tags/v2.2.tar.gz"
  sha256 "c711282bd25a187280942b3f53ff04646dee746c0476dc249eb249b149a6746b"
  license "GPL-3.0-or-later"

  depends_on :macos
  depends_on xcode: :build

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  def caveats
    <<~EOS
      CM6206 Enabler has been installed.

      使用方法:
      ========

      1. ワンショットモード（1回だけ初期化）:
         $ cm6206-enabler

      2. デーモンモード（常駐して自動初期化）:
         $ cm6206-enabler -d

      自動起動設定:
      ==========

      LaunchDaemonとして登録することで、システム起動時やスリープ復帰時に
      自動的にCM6206デバイスを初期化できます。

      詳細は以下を参照してください:
      https://github.com/kunichiko/CM6206-enabler-mac#launchdaemonとしてインストール
    EOS
  end

  test do
    system "#{bin}/cm6206-enabler", "-V"
  end
end
