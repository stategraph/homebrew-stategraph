class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.28"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.28/stategraph-3.2.28-macos-arm64.tar.gz"
  sha256 "b1ffc08dee049952a6a8d15871c4be67f264a3950e344cf993c31db23e3707eb"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
