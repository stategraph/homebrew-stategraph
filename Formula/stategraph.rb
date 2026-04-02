class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "1.0.6"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/1.0.6/stategraph-macos-arm64.tar.gz"
    sha256 "0b1fb5d236a8fd69f9b49f5969efc9dfff811a58c32beca9a17a5ce11e4cc457"
  else
    url "https://github.com/stategraph/releases/releases/download/1.0.6/stategraph-macos-amd64.tar.gz"
    sha256 "d72c68a0ff1f0ab12d6871cb8fcf2c92feb5205e487c496aba4f00c36ef21291"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
