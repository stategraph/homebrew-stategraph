class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "1.0.3"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/1.0.3/stategraph-macos-arm64.tar.gz"
    sha256 "ef368e495a5aa4ef74f94c47f8342ab19a15cea8060e463890eb181a82ee2a15"
  else
    url "https://github.com/stategraph/releases/releases/download/1.0.3/stategraph-macos-amd64.tar.gz"
    sha256 "5eb7e7a0289dc1e82d1b19b996c4733077da1c434ac2c2dd7eb88d89e6cb2987"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
