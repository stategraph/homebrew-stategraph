class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.2.2"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.2.2/stategraph-macos-arm64.tar.gz"
    sha256 "467c4054d2f561ab2c3f61ec4b34ec4adc7fafef958818d72b4fe1e9f5cccb61"
  else
    url "https://github.com/stategraph/releases/releases/download/2.2.2/stategraph-macos-amd64.tar.gz"
    sha256 "ae275b7bc53ada6c9a186f6f0b539b0199f840dc42ee8c7aa032489f4116fc2b"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
