class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.1.3"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.1.3/stategraph-macos-arm64.tar.gz"
    sha256 "58d0054670c9d70c1bdbae0d4672a50f475ffb10529464ee9e7080bf80eaf8b8"
  else
    url "https://github.com/stategraph/releases/releases/download/2.1.3/stategraph-macos-amd64.tar.gz"
    sha256 "ed22f2f11a60e7ddbe78ad1cb3219d1f8ddd90a801859d1e9fc178c27794fe6f"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
