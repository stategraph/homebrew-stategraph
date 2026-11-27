class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.46"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.46/stategraph-3.2.46-macos-arm64.tar.gz"
  sha256 "60df6dba7b4bf094b307eba9a58e3c40a326bab6f854525f4629783e86333d38"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
