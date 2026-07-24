class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.28"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.28/stategraph-2.3.28-macos-arm64.tar.gz"
    sha256 "e24d56b5e144aad6027fbb73885231d1729a72ce0d394ba32ef66f41e2cfda7a"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.28/stategraph-2.3.28-macos-amd64.tar.gz"
    sha256 "eae878f8b19c7d7d2abf9d5aeee888521eed02c4b94506e5dfc9d7fc7e45dad6"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
