class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.17"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.17/stategraph-2.3.17-macos-arm64.tar.gz"
    sha256 "642af164acb790c7241e0248cce503ad0783292f45b2f49418a54309528fe7b7"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.17/stategraph-2.3.17-macos-amd64.tar.gz"
    sha256 "a3b9d9e4e866284783dfbeee93d03aefcdf4ceaaf6a3d2dbd1892d2baa7e6363"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
