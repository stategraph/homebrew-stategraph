class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.38"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.38/stategraph-3.2.38-macos-arm64.tar.gz"
  sha256 "83150cddd9c8174a2a13f14ba976cd5b81ed5c44166010d5e3caf8a605f86dcf"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
