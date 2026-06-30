class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.14"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.14/stategraph-2.3.14-macos-arm64.tar.gz"
    sha256 "ae617c47f7456b22a8f32ceafff7d7ed1a256f94c6bac0e422958323c0a7f768"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.14/stategraph-2.3.14-macos-amd64.tar.gz"
    sha256 "5c8af28c356cb6b55f36b573f31f484eec06df8dab449c6540856614e4a4f232"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
