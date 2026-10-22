class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.18"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.18/stategraph-3.2.18-macos-arm64.tar.gz"
  sha256 "be848687f2e831fdd7aa748fae6d6cdba3a493a514070420ae4fab27737e0b14"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
