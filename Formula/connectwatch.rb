class Connectwatch < Formula
  desc "Watch kafka connect connectors, see why a task failed and restart it"
  homepage "https://github.com/Dem1241/connectwatch"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dem1241/connectwatch/releases/download/v0.1.0/connectwatch_0.1.0_darwin_arm64.tar.gz"
      sha256 "3b940831ddaedc102414e03271c3eede1716615853d14afdc8962b868f039986"
    end
    on_intel do
      url "https://github.com/Dem1241/connectwatch/releases/download/v0.1.0/connectwatch_0.1.0_darwin_amd64.tar.gz"
      sha256 "36c9e3332b9216fb6875e4e7511a07a841729aaeec124907c7d064ae9bc7f266"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dem1241/connectwatch/releases/download/v0.1.0/connectwatch_0.1.0_linux_arm64.tar.gz"
      sha256 "dff931e1b43d7c5be1d1bb84b838111c1358f24d9f5528095b3c7535643ffd9f"
    end
    on_intel do
      url "https://github.com/Dem1241/connectwatch/releases/download/v0.1.0/connectwatch_0.1.0_linux_amd64.tar.gz"
      sha256 "dcc231a8d6d961b6cddf6eb8701fbe548a6a9c08bf107a1dedceccad7e8aae14"
    end
  end

  def install
    bin.install "connectwatch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/connectwatch --version")
  end
end
