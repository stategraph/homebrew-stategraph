class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.27"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.27/stategraph-2.3.27-macos-arm64.tar.gz"
    sha256 "491015e8d3582915fbb5867acfa179464fbee727d75814474134ca3000a8676d"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.27/stategraph-2.3.27-macos-amd64.tar.gz"
    sha256 "f71190f489b654feea785dbd7ba40d53372295fcde32752f8b5f837dc904fe34"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
