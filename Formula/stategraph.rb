class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.8"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.8/stategraph-2.3.8-macos-arm64.tar.gz"
    sha256 "47da27b704ec634707edcf7d74e4df4bed4148645c3b8be6a04036299cdfec11"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.8/stategraph-2.3.8-macos-amd64.tar.gz"
    sha256 "7b8da196987acffea918a6ac60a9dbff06b15818c7500cce267dbe5d8796efdb"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
