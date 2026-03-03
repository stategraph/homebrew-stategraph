class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.27"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.27/stategraph-macos-arm64.tar.gz"
    sha256 "3dc64022d156d29c7b1deba9969603ffa53a73e11c1422066c82bcde6833fa4a"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.27/stategraph-macos-amd64.tar.gz"
    sha256 "70c86965e40e29c0b8708b4ec8d6237f614d1b90dca6b8da53ef9044cbd5a348"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
