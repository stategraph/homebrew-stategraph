class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.25"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.25/stategraph-2.3.25-macos-arm64.tar.gz"
    sha256 "ffcf5633668bfa86f461461c44ff291968c8aad9e209d8347faab8d761122079"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.25/stategraph-2.3.25-macos-amd64.tar.gz"
    sha256 "6afe7a4cf58be1298b1b5e6847a3aae00568026e3413054c57079ad29b2ae8cd"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
