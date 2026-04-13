class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "1.2.0"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/1.2.0/stategraph-macos-arm64.tar.gz"
    sha256 "7740b4b4e2cfb8b7082d88d57a4c4bb6c07bdebe052f7b317df621a982b42853"
  else
    url "https://github.com/stategraph/releases/releases/download/1.2.0/stategraph-macos-amd64.tar.gz"
    sha256 "e457a50d8c8386fbb1f4b554644753cdac344d4745ac48c27da305ed71051364"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
