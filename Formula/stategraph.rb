class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.33"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.33/stategraph-2.3.33-macos-arm64.tar.gz"
    sha256 "bf447dea4ad7807b6b6d45be643dcde3652ab3dda422f1c2212cf658bdce10de"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.33/stategraph-2.3.33-macos-amd64.tar.gz"
    sha256 "13d86ff0ff5bd53bd1b555d5856483233773afd7cb883314853cce188a9ad074"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
