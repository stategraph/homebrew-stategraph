class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.5"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.5/stategraph-2.3.5-macos-arm64.tar.gz"
    sha256 "45e1bf7974d614c3762faf551db70eca8c0af97065145619439549b75766eb6e"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.5/stategraph-2.3.5-macos-amd64.tar.gz"
    sha256 "3575d19fb53facbde28e0f7143c8564e99136d65e6cc00b4548ac6bad20e751c"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
