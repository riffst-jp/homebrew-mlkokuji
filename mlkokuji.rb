class Mlkokuji < Formula
  desc "国交省の告示・通達を検索・表示・ダウンロードするCLI"
  homepage "https://github.com/riffst-jp/mlit-kokuji"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/riffst-jp/mlit-kokuji/releases/download/v2.0.0/mlkokuji-v2.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "e1774f1980ce2650439bc2182d998c89287ecaf2ab46fc169fe0d6374d986b81"
    end
    on_intel do
      url "https://github.com/riffst-jp/mlit-kokuji/releases/download/v2.0.0/mlkokuji-v2.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "a6801de66bf59b6a36fc8f077052c5a73aae8e0a28181afbc7c98e7ef3d24575"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/riffst-jp/mlit-kokuji/releases/download/v2.0.0/mlkokuji-v2.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a984f6c53ec546c245fc2290de6e135fd4b6386181691e95b44b1f69445336bb"
    end
    on_intel do
      url "https://github.com/riffst-jp/mlit-kokuji/releases/download/v2.0.0/mlkokuji-v2.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa7619168a9f8d788545bd0885b4bfcd433c2164ff4f4339079d3ff139eeddc9"
    end
  end

  def install
    bin.install "mlkokuji"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mlkokuji --version")
  end
end
