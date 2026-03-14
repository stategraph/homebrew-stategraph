class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.34"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.34/stategraph-macos-arm64.tar.gz"
    sha256 "f5b847a7a24b8f49701a6edd1cfda0740b45f7e1a3bb24e32cb7c62afbab66e2"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.34/stategraph-macos-amd64.tar.gz"
    sha256 "454819f3e96e0f49607c8e34ea075821f4b88706de04fb11adc5ce4b2daf664b"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
