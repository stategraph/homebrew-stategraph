class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.2.4"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.2.4/stategraph-2.2.4-macos-arm64.tar.gz"
    sha256 "1b1c8e2868aa209e4877dda129659f6b0b25694acc7d745afb4a1b78a0bce78d"
  else
    url "https://github.com/stategraph/releases/releases/download/2.2.4/stategraph-2.2.4-macos-amd64.tar.gz"
    sha256 "8bd7c92be8c805b751d488750ef0fe5c0e943e915ba5d0bfa95e264d5b66b7b0"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
