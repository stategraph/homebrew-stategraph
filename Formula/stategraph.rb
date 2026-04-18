class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "1.2.2"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/1.2.2/stategraph-macos-arm64.tar.gz"
    sha256 "92c54e33a7ef731915f041e90c785731906e287baa9c7eaaccfe549b4c186d5c"
  else
    url "https://github.com/stategraph/releases/releases/download/1.2.2/stategraph-macos-amd64.tar.gz"
    sha256 "eb32fd1b4680a50f0e14dbc10f7c643555909780d6517a5c49f85304cbbcec8f"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
