class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.9"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.9/stategraph-2.3.9-macos-arm64.tar.gz"
    sha256 "1b9a466852405144c69240942d90a172fdf71dcef130097d70439a79541db505"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.9/stategraph-2.3.9-macos-amd64.tar.gz"
    sha256 "3cf4a161ac7bb6f465f7505f4325f32190a4927c2f1a697277efc064479a6319"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
