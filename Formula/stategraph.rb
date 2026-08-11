class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.39"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.3.39/stategraph-2.3.39-macos-arm64.tar.gz"
  sha256 "75fc44e1945b2c4fe058ed808a15cf4ac2977075405cf3b7a08590ee5aa66a0a"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
