class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "1.0.2"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/1.0.2/stategraph-macos-arm64.tar.gz"
    sha256 "ebdc4584217ae272f5705a6bdef6f595481a9a8affd739a732c5c9dedfa6b179"
  else
    url "https://github.com/stategraph/releases/releases/download/1.0.2/stategraph-macos-amd64.tar.gz"
    sha256 "4ba7747cef0045c810179e67ccdca09343dd5e97e5f419681cc05f74a0fd2beb"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
