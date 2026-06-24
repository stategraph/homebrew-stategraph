class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.7"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.7/stategraph-2.3.7-macos-arm64.tar.gz"
    sha256 "c39239a8e3770b09260badf70a3778a50ffd361d77eb83e76937d454990f184c"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.7/stategraph-2.3.7-macos-amd64.tar.gz"
    sha256 "678810269cb80f370648fb848d01beb3e45e48de74e74c5e1042a89f603a870f"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
