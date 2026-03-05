class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.30"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.30/stategraph-macos-arm64.tar.gz"
    sha256 "69bde98776bf562e084ea0fe35c2868d9549b3600d33b833677ac1e1a225867c"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.30/stategraph-macos-amd64.tar.gz"
    sha256 "ebb9f4bc8749f42843337fb65bf5f9515d230cdab73b813d48a8df18563a9403"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
