class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.34"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.34/stategraph-macos-arm64.tar.gz"
    sha256 "2aa489772766f6d1004e702b0402cb8db0c379f210702ac533140e7c3ad8dae1"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.34/stategraph-macos-amd64.tar.gz"
    sha256 "b0e0d67d66ed0d5a346d35c2609c63877336b73b1d15e9c24a0ea6471d0984dd"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
