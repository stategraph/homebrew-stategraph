class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.17"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.17/stategraph-macos-arm64.tar.gz"
    sha256 "56bc4858c87d9511ab4bcc82c43a8540d4190381c961bf6363381a00338d063e"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.17/stategraph-macos-amd64.tar.gz"
    sha256 "8d40eaa39928552b306d6e21feda7942b6c7ce98a721d59e81c8b710a7abca91"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
