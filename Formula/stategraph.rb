class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.11"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.11/stategraph-2.3.11-macos-arm64.tar.gz"
    sha256 "56aeccae77b59261cd81f297376d5b81c148a0d9f4a64a8913afff165aa7eb79"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.11/stategraph-2.3.11-macos-amd64.tar.gz"
    sha256 "a1d1e2d8a6e5153ba7bf53d1bd1b367d711000cd2f7c7577f26305674227c72e"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
