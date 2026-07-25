class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.29"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.29/stategraph-2.3.29-macos-arm64.tar.gz"
    sha256 "a78c94b18834c86f012c0f0d1315b050e075046fba78af8d817462a9f61fbefe"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.29/stategraph-2.3.29-macos-amd64.tar.gz"
    sha256 "30ef69ea843d4fef55a0fa7e8a6db8d36150e78ccf380cd954894fb17e7a29cc"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
