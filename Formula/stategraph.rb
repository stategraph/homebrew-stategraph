class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.1.4"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.1.4/stategraph-3.1.4-macos-arm64.tar.gz"
  sha256 "1bdfcdb4d499715021f68acf062c840bbcb6c79c30c583dd100095932df554ae"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
