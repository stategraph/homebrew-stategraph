class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.0.0-rc.4"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.0.0-rc.4/stategraph-3.0.0-rc.4-macos-arm64.tar.gz"
  sha256 "9f43fd7822ae06899cd9a831f734a2ba1c5ba1952a54e1ace8da0ec361feef02"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
