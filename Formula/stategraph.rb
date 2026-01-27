class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.12"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.12/stategraph-macos-arm64.tar.gz"
    sha256 "f6c6970809b94273466e1b5ef3e0f452fcddcbf8a4b61446479783f3608ba487"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.12/stategraph-macos-amd64.tar.gz"
    sha256 "ec65f916494017527aa81f0ea83d742d36ed38f18cb6628865fe6c7332a1b923"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
