class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.30"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.30/stategraph-2.3.30-macos-arm64.tar.gz"
    sha256 "3be70a979c6bbdfab3814b14f89da3b6e2fa536b5c8630ad0eac8e44c3c4f523"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.30/stategraph-2.3.30-macos-amd64.tar.gz"
    sha256 "f194d18dc4432f355eaefb8ada1960958870aeea008047e4994d09b2142c11b6"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
