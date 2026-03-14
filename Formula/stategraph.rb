class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.35"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.35/stategraph-macos-arm64.tar.gz"
    sha256 "6ac896bddc09dabccc124a510e19e33d7b4a8df285c15cd4fa8d63adaf7b87af"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.35/stategraph-macos-amd64.tar.gz"
    sha256 "ef3e1f15daeaaa32d3cc713e639bd0b66950e2361e1e2826e4ef89705241bf0c"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
