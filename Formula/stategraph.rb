class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.1.0"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.1.0/stategraph-3.1.0-macos-arm64.tar.gz"
  sha256 "46f02cfe19df37c419f8fba444ed4530c15bf2907177185ab9e5a08e81ef39dd"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
