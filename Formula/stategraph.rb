class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.32"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.32/stategraph-macos-arm64.tar.gz"
    sha256 "2db4abb4463f41ed9855be3c3097cefcb4e44b4208c8630ad269909e45c840a3"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.32/stategraph-macos-amd64.tar.gz"
    sha256 "fea0e2ff776dec57126f8a4b30ca20dcb3f9725cea12c9c1dbcb2761c97e5f00"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
