class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "1.0.1"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/1.0.1/stategraph-macos-arm64.tar.gz"
    sha256 "381d5c12955883d053449d82dcfa07968fac08635c70f57529d61728e8817876"
  else
    url "https://github.com/stategraph/releases/releases/download/1.0.1/stategraph-macos-amd64.tar.gz"
    sha256 "f91b5fd152f2feb60d6ae3b651123003ff8c340ff02f027eb46031cea0b940a4"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
