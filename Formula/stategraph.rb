class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.2.5"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.2.5/stategraph-2.2.5-macos-arm64.tar.gz"
    sha256 "1477b3899f58a454d3af58bb6f0295dea6cfd3a6c4bcb1fcf725d34011b3155b"
  else
    url "https://github.com/stategraph/releases/releases/download/2.2.5/stategraph-2.2.5-macos-amd64.tar.gz"
    sha256 "f6803525e88443a3a9b47ca9d44f30d270b284936a75075a431c31d99e1d2fdf"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
