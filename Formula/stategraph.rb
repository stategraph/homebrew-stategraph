class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.5.5"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.5.5/stategraph-2.5.5-macos-arm64.tar.gz"
  sha256 "64a3cb0b9fb5cce4c3c617a28d3a1234a599d933fd7156677087842ca336885a"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
