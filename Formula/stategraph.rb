class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.43"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.43/stategraph-3.2.43-macos-arm64.tar.gz"
  sha256 "b31f7c213fe8b190f1aa7e411c37bdb910cdcc425eeb269f843d21677d537fd0"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
