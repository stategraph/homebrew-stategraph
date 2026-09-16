class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.5.8"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.5.8/stategraph-2.5.8-macos-arm64.tar.gz"
  sha256 "258e0e039a73b3e3e520aa46c24713417e6a3af6e9d13333cb42a4fc2905493b"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
