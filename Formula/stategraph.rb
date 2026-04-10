class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "1.1.0"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/1.1.0/stategraph-macos-arm64.tar.gz"
    sha256 "2dd6c71db4cc9ddc31bf66e7a4b934fc99ed23adc2e1e09375140e7cff01d617"
  else
    url "https://github.com/stategraph/releases/releases/download/1.1.0/stategraph-macos-amd64.tar.gz"
    sha256 "0cb55abf6c12ac9ea4557c7be5175b5625d73d07215657d0bafcec8038f6dd9e"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
