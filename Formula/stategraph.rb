class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "1.0.4"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/1.0.4/stategraph-macos-arm64.tar.gz"
    sha256 "2015af71b80332126f5086177bda1353fd2ce9014c98c5758a361b62c4042c1d"
  else
    url "https://github.com/stategraph/releases/releases/download/1.0.4/stategraph-macos-amd64.tar.gz"
    sha256 "941dbc56439e9316e9b79a411b4317b4a8e119e40b4908089791fc4b58cd8d1a"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
