class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.6"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.6/stategraph-2.3.6-macos-arm64.tar.gz"
    sha256 "243475eb6b3564c32bac1001b95d5dc04cce692883ce1cac46f3263e5c52d59d"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.6/stategraph-2.3.6-macos-amd64.tar.gz"
    sha256 "c598164af8dbcb6fa9d547579e04ec20ab5c380f180195ee2f7cbeab46a3bc44"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
