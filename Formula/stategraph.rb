class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.4"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.4/stategraph-2.3.4-macos-arm64.tar.gz"
    sha256 "e3a123785310d483e509a1eea74b502829757ea37aa7b1dd914eb8386d0fbc93"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.4/stategraph-2.3.4-macos-amd64.tar.gz"
    sha256 "92ad013e3aebe49ed5e680d790d656b3608b7fcabf03e42bc774da69ee97c29d"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
