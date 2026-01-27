class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.13"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.13/stategraph-macos-arm64.tar.gz"
    sha256 "4192c5a8a82d21959e178742c84ce0b5254b246cb889e96a1250453a3c02c5a5"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.13/stategraph-macos-amd64.tar.gz"
    sha256 "b2de78cffb8c62a0478e494460137444988a56b35e6a9ad634fa445bc6992701"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
