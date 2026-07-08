class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.21"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.21/stategraph-2.3.21-macos-arm64.tar.gz"
    sha256 "30555a91f4b9a44b536b31e7d1a33ed4fa84368080ae2ad23f25ec28d1fd0362"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.21/stategraph-2.3.21-macos-amd64.tar.gz"
    sha256 "f5487079e82710344ab240ac30fe5417c83c4bc83482901aac55a62234bd5d1d"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
