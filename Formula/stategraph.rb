class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.3"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.3/stategraph-2.3.3-macos-arm64.tar.gz"
    sha256 "543ffc727e7d613d40b7d3f456efb2041b336e8eb8b2ed8ffbde0263c7ee6ad5"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.3/stategraph-2.3.3-macos-amd64.tar.gz"
    sha256 "b3bbe5969e536860f2750d4b0da358484f2da03e454d46a409f564714edd4a3d"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
