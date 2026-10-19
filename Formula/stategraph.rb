class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.12"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.12/stategraph-3.2.12-macos-arm64.tar.gz"
  sha256 "71c537a32810fd3814067afc7443b4b9817b29f95afae07fbeb89fcf9c93f201"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
