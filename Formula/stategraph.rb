class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.29"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.29/stategraph-macos-arm64.tar.gz"
    sha256 "b79ff6336f3f996ea976efe6dafd27e848a43fc9d651f1dd92781da0ddea8d50"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.29/stategraph-macos-amd64.tar.gz"
    sha256 "1f1fc00642a323c538881e9d23c13a8098f4a2573c6efe3c8b5ae8dc49ee0865"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
