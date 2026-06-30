class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.13"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.13/stategraph-2.3.13-macos-arm64.tar.gz"
    sha256 "f3788ec0f7233760e416f8c2edab44514a9f4abfa218f277d23f7a3d15077b57"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.13/stategraph-2.3.13-macos-amd64.tar.gz"
    sha256 "4bd158e38b56e66a12af9beec42bf969e0bde5dee394202840daa5ff221fa00d"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
