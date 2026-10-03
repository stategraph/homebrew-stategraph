class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.2"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.2/stategraph-3.2.2-macos-arm64.tar.gz"
  sha256 "5ff5c1dc24d3491cffb6186717c0b63a83524066a7614783f84d11647b6786b4"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
