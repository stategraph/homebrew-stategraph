class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "1.0.7"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/1.0.7/stategraph-macos-arm64.tar.gz"
    sha256 "84b52237d7b03dc4f8dc184d436a19026fbd1c836062844215dc84219084b3de"
  else
    url "https://github.com/stategraph/releases/releases/download/1.0.7/stategraph-macos-amd64.tar.gz"
    sha256 "eda471f958c4d7e7bec13320820a385559c9e9e9de54b6d90789631a7c19f272"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
