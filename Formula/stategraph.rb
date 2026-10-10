class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.8"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.8/stategraph-3.2.8-macos-arm64.tar.gz"
  sha256 "cb4fae91bdae4aef581f858585da0d1e9c1695e332c8a0713cd8cfdb780fc67f"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
