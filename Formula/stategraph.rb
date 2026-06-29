class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.12"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.12/stategraph-2.3.12-macos-arm64.tar.gz"
    sha256 "3dad366adee77a93e2b6aa4b64b636f8fba3b45ce481e7e01208381eb6e995ae"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.12/stategraph-2.3.12-macos-amd64.tar.gz"
    sha256 "eca73171a288229b183dc6b7bef528073109809822fad3f3568cd233e577d14b"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
