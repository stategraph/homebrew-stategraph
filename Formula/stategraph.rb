class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.4.3"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.4.3/stategraph-2.4.3-macos-arm64.tar.gz"
  sha256 "34db2d79da0fd3a70dc2a76eed1b2968d72b0e69f0a36d075303ae8303cc96ae"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
