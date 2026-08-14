class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.4.2"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.4.2/stategraph-2.4.2-macos-arm64.tar.gz"
  sha256 "7a7b9f59872f2cdf0292cbcd236edf48f406a5194bf0c66ec0d0eb87597f1227"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
