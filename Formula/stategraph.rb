class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.33"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.33/stategraph-macos-arm64.tar.gz"
    sha256 "15ec0b9c2dd83f6f24d2cf35cc45063c0924b96dae8e51afa0d0cca048be021a"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.33/stategraph-macos-amd64.tar.gz"
    sha256 "9e6e71bb5bf4a5520daf52a2b969489b934b977bfa7fe62a21dd112d14d6fb3b"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
