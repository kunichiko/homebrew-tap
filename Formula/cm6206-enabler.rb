class Cm6206Enabler < Formula
  desc "Enable audio output on CM6206 USB audio devices for macOS"
  homepage "https://github.com/kunichiko/CM6206-enabler-mac"
  url "https://github.com/kunichiko/CM6206-enabler-mac/archive/refs/tags/v3.0.0.tar.gz"
  sha256 "1947f94728f2e7963a2ffe4706f91c078812e0961d0f88c85b7dfb4354b6febd"
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

      2. 詳細モードで実行:
         $ cm6206-enabler -v

      自動起動設定（推奨）:
      ==================

      LaunchAgent として登録（sudo不要、推奨）:
         $ cm6206-enabler install-agent

      LaunchDaemon として登録（高度な用途）:
         $ sudo cm6206-enabler install-daemon

      詳細は以下を参照してください:
      https://github.com/kunichiko/CM6206-enabler-mac#自動起動設定
    EOS
  end

  test do
    system "#{bin}/cm6206-enabler", "-V"
  end
end
