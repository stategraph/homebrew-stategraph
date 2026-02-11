class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.22"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.22/stategraph-macos-arm64.tar.gz"
    sha256 "2ea391a61e6571625ee3bea000861c5c2569610c4b0a9b0d24e8d78e907b3e1b"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.22/stategraph-macos-amd64.tar.gz"
    sha256 "03ec9fdd6a8a65dae6f6be6dc27ccbaea9fe00a76f21843097b4df1e11ab5b29"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
