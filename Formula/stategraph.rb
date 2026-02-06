class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.18"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.18/stategraph-macos-arm64.tar.gz"
    sha256 "d561366c138b55c5bf079c9dd05161604cc0de3f916fd7c0138745f7db97bafc"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.18/stategraph-macos-amd64.tar.gz"
    sha256 "62613867cb572f0407d8fb4c49f77860ea5dc3ed7a34b3c08c63bf45fc521267"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
