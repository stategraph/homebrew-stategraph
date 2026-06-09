class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.0"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.0/stategraph-2.3.0-macos-arm64.tar.gz"
    sha256 "ed6c1c42c47d4067fbbda28addf11b7edd41123ea23d6535f3f3d1a929f10426"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.0/stategraph-2.3.0-macos-amd64.tar.gz"
    sha256 "4e91de97adeb9f1a7e3a2aa3e4fd5853efbd5346321e958c28c137a01f7c5f5a"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
