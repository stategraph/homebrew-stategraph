class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.24"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.24/stategraph-2.3.24-macos-arm64.tar.gz"
    sha256 "3d9bd0845963637fbfe8694652f181cb96704665476f358df22c6ddadd3e6ca5"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.24/stategraph-2.3.24-macos-amd64.tar.gz"
    sha256 "b0f82d550e5018ea733bb7b10c5666b313fa0ca96815d4ab2c6cd9b9cc88d6ac"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
