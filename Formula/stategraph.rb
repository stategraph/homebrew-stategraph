class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.25"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.25/stategraph-macos-arm64.tar.gz"
    sha256 "4237bf45ff7b9d663c2b6bb5af9d3da82b89eacc4c6d6f68d5a87ac38cdeac25"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.25/stategraph-macos-amd64.tar.gz"
    sha256 "fc5a18f39c7e21a5375aee5f86cf16b06539e131d6a39e9b7a702d4dd23e1a64"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
