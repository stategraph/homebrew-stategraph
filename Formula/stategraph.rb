class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.15"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.15/stategraph-macos-arm64.tar.gz"
    sha256 "67ef7e06ec09e0ae76bdbe664d96cb95bc041e7608676021bae7b821c7c85dd3"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.15/stategraph-macos-amd64.tar.gz"
    sha256 "54239029fdebb2267b8a5f40ed1caeaa44367c33d600df619eefaa70bf18643c"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
