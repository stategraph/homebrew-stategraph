class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.20"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.20/stategraph-macos-arm64.tar.gz"
    sha256 "4c813557922f61827b05ad5b51dfe0e3f0c890bdfbccc01c545c98fd4415ac8e"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.20/stategraph-macos-amd64.tar.gz"
    sha256 "da5e748478906192d1f5cdda9a05305eea3ae255b925bbd8322d68499339151d"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
