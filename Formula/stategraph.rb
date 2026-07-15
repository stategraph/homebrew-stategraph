class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.26"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.26/stategraph-2.3.26-macos-arm64.tar.gz"
    sha256 "40f6d18116a28d109da46b6651317a7806716436a00c7930a41bcec321083be6"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.26/stategraph-2.3.26-macos-amd64.tar.gz"
    sha256 "d49b59db0e831daa61ce3d2754ff7d9d80fc75857f30351a0c1a23c989df0047"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
