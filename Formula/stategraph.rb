class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.0.0"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.0.0/stategraph-3.0.0-macos-arm64.tar.gz"
  sha256 "db2dd67faf733c4452f3be4d39de536511efc70c2c059fa82e40d115eb0b32f3"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
