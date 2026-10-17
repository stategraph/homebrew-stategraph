class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.11"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.11/stategraph-3.2.11-macos-arm64.tar.gz"
  sha256 "f91ef18756d4471f8db9294a296f29c16eb8ccea76398d3f9c32778758359c49"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
