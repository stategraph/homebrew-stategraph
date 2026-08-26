class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.5.1"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.5.1/stategraph-2.5.1-macos-arm64.tar.gz"
  sha256 "8e236119b80b11eee6bd53e62c991fddeb6ea973ad8a3a3ea5079baf171dfbd2"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
