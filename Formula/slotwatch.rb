class Slotwatch < Formula
  desc "Watch postgres replication slots and catch the one filling your disk with WAL"
  homepage "https://github.com/Dem1241/slotwatch"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dem1241/slotwatch/releases/download/v0.1.1/slotwatch_0.1.1_darwin_arm64.tar.gz"
      sha256 "ee02bbab5f02fe1073cd4adf87ae7a78aaf5edab2427af69e7bf6770dc4e4a5f"
    end
    on_intel do
      url "https://github.com/Dem1241/slotwatch/releases/download/v0.1.1/slotwatch_0.1.1_darwin_amd64.tar.gz"
      sha256 "fba0a6f25a4787d5b20113a965d0ef60a69aa0b083b49aaa8b450ce7ddc3e77c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dem1241/slotwatch/releases/download/v0.1.1/slotwatch_0.1.1_linux_arm64.tar.gz"
      sha256 "51cec9c6e8a03a8c27528a692ae9d77e81cff6ebaa5a2acf6d58873d7636cbfd"
    end
    on_intel do
      url "https://github.com/Dem1241/slotwatch/releases/download/v0.1.1/slotwatch_0.1.1_linux_amd64.tar.gz"
      sha256 "17c97638f587e51a9eaef366cb6b577ca4daf1e12df1d6414b370d29230215f7"
    end
  end

  def install
    bin.install "slotwatch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slotwatch --version")
  end
end
