class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.39"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.39/stategraph-3.2.39-macos-arm64.tar.gz"
  sha256 "5e816095114378809f8f1c8ef17cab842e1ae7f65cfa3d10b025ec4a388819aa"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
