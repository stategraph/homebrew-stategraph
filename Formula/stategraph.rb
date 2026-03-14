class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.34"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.34/stategraph-macos-arm64.tar.gz"
    sha256 "f00dc97e4d4e2faa0667cab0fa7de7f2c78faccaaf2198a997aa139bbbd69ccb"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.34/stategraph-macos-amd64.tar.gz"
    sha256 "60b7114311ac75f13aed1c3c04fb402ad073619d7671e797a7fb7d2e6fea4286"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
