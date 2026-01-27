class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.10"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.10/stategraph-macos-arm64.tar.gz"
    sha256 "f315ae1ddab6bcffb31bfda66f0bc8728aa6e5089c6641a0bee691f8ea74a67f"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.10/stategraph-macos-amd64.tar.gz"
    sha256 "5dbe719a8a54dc6140a9956b7b4f7a93a8633f1175e55685dba2025e97f9466d"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
