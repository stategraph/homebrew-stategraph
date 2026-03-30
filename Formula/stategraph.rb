class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "1.0.5"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/1.0.5/stategraph-macos-arm64.tar.gz"
    sha256 "a93ca2e13a77d88a9b2e9c0da03e9e05c36bf47194c5bd720aee07833a4a38f7"
  else
    url "https://github.com/stategraph/releases/releases/download/1.0.5/stategraph-macos-amd64.tar.gz"
    sha256 "709a762309ba6951bcf52d29d01dd533c3fb4ecb09bfc91db86f2c130598a6c8"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
