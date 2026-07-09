class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.23"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.23/stategraph-2.3.23-macos-arm64.tar.gz"
    sha256 "389deb551006302dd84a6c220c107d7be03adf3bf4235aeb89eed3a130835717"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.23/stategraph-2.3.23-macos-amd64.tar.gz"
    sha256 "83c7a5f392aa8c0a7bc661659875f188f97e5b9c240902d0f65442722a9a5fd9"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
