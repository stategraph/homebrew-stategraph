class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.2.0"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.2.0/stategraph-macos-arm64.tar.gz"
    sha256 "725c0e5da98effc2ffc9096a47e123eaa174dbc451a333151f8f11eb1670d075"
  else
    url "https://github.com/stategraph/releases/releases/download/2.2.0/stategraph-macos-amd64.tar.gz"
    sha256 "298268a8c45ff193fbcea711c607f4edd087d2f9b5717e07ffe8ca13c5f22c8a"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
