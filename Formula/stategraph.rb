class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "1.0.8"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/1.0.8/stategraph-macos-arm64.tar.gz"
    sha256 "8fa84dd160f6579d7d8e54985f871382fe3cd19a6a466b795419b71f1df793e5"
  else
    url "https://github.com/stategraph/releases/releases/download/1.0.8/stategraph-macos-amd64.tar.gz"
    sha256 "3dff6b4cc97a9816809a2a431dfd743bd5348b36116c41e54258f51de4a740e5"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
