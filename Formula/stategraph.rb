class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.36"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.36/stategraph-macos-arm64.tar.gz"
    sha256 "c9e326a53dbbf55b205b8b24bd7b683fafec5976fbc1ff874f0def2822a0998b"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.36/stategraph-macos-amd64.tar.gz"
    sha256 "cf2f2a8d5be80e0209bab335c40c87c76c0692e33396c2bcae88f5cbf19ef3ab"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
