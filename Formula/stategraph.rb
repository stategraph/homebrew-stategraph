class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.42"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.42/stategraph-3.2.42-macos-arm64.tar.gz"
  sha256 "8d004aac781312eeff77d701c74a51100eeb9e8e685bee424ec942700e5ba3fd"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
