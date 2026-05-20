class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.2.1"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.2.1/stategraph-macos-arm64.tar.gz"
    sha256 "f1e6a301d94b2f89b49a9107978e05d3adef7b7dc4508ba5e5baa2ccd2310906"
  else
    url "https://github.com/stategraph/releases/releases/download/2.2.1/stategraph-macos-amd64.tar.gz"
    sha256 "24cf0eab6457e3054fab70af10aa4bb1c0ea35629e4a90c7eba7c8b648a87155"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
