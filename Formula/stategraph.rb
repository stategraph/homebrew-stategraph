class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "1.0.9"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/1.0.9/stategraph-macos-arm64.tar.gz"
    sha256 "30019106aab24bf7aa222e54479173d030842edff7f4a2baacfe3b735bdc7b64"
  else
    url "https://github.com/stategraph/releases/releases/download/1.0.9/stategraph-macos-amd64.tar.gz"
    sha256 "cc481426df0bf0d5fc2d9607d93a142ee87a0804eb35553546b3d3e6e22ab3f0"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
