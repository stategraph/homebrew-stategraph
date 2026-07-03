class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.19"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.19/stategraph-2.3.19-macos-arm64.tar.gz"
    sha256 "074483e42af4ebeac97bf4d622cf056f612356a5c0845a947f62062b0eb18bd6"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.19/stategraph-2.3.19-macos-amd64.tar.gz"
    sha256 "e2fcd811f558b00f38d9d0686dd47625efd5657422fe3b5ff0ca8cb456bba632"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
