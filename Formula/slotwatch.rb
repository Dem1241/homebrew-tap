class Slotwatch < Formula
  desc "Watch postgres replication slots and catch the one filling your disk with WAL"
  homepage "https://github.com/Dem1241/slotwatch"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dem1241/slotwatch/releases/download/v0.1.0/slotwatch_0.1.0_darwin_arm64.tar.gz"
      sha256 "ca55a39d64a12211807b7efe3776e9c0a6839e713a34d3f4802a16ab56421062"
    end
    on_intel do
      url "https://github.com/Dem1241/slotwatch/releases/download/v0.1.0/slotwatch_0.1.0_darwin_amd64.tar.gz"
      sha256 "38db3e8810d55a53413ec728aa49ec9df38941d8236028a0c75638b81d2931e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dem1241/slotwatch/releases/download/v0.1.0/slotwatch_0.1.0_linux_arm64.tar.gz"
      sha256 "40886ae3e6fce932366d4de4c518f50d8ad334c8a2ebc7536dcb2a2fe2e79e2b"
    end
    on_intel do
      url "https://github.com/Dem1241/slotwatch/releases/download/v0.1.0/slotwatch_0.1.0_linux_amd64.tar.gz"
      sha256 "d4d6c81d35624c968ce66892aab5a17a1ff0741778af805e86169afd55feff98"
    end
  end

  def install
    bin.install "slotwatch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slotwatch --version")
  end
end
