class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.21"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.21/stategraph-3.2.21-macos-arm64.tar.gz"
  sha256 "75554804b2f5d7dbc20d18372bec2922106ee5e5e7ff925f3032f867e03b7de8"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
