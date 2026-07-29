class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.31"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.31/stategraph-2.3.31-macos-arm64.tar.gz"
    sha256 "4d387bea858366eb8f391ae3333c55b9756e1e0521e42a0d946dcdfa853f3d90"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.31/stategraph-2.3.31-macos-amd64.tar.gz"
    sha256 "81cc28671027ea72e9c23ca825179b01c962d88a2ab6a5652e8e299218494121"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
