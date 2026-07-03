class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.20"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.20/stategraph-2.3.20-macos-arm64.tar.gz"
    sha256 "8f142e4fc2f0b36b1269cc8882ce1974560c0b6459e6cce519cd33d2784e27b2"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.20/stategraph-2.3.20-macos-amd64.tar.gz"
    sha256 "d4a8567ec3e04e1039d1b2d0042f068ecf875bb449f75709411b5da332ec20dc"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
