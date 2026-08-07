class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.36"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.3.36/stategraph-2.3.36-macos-arm64.tar.gz"
  sha256 "0017c8addd875f58c491b856358544137e1dbe3850b52b17eda4404e7adefd42"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
