class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.4.0"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.4.0/stategraph-2.4.0-macos-arm64.tar.gz"
  sha256 "08c70a092a7df71c98f179284b375f46c7c918c4d7bf3cbc925f4f6de43f135e"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
