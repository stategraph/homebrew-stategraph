class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.34"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.34/stategraph-macos-arm64.tar.gz"
    sha256 "8b01884d521a8e1f198004baf6512a6e22214d8b978494557824f25d28882b66"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.34/stategraph-macos-amd64.tar.gz"
    sha256 "e163536c99e4ce95d908fa28f907813655588a66d311dfbe3f92219b477ca6c2"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
