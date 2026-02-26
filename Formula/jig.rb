class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.15.1/jig_darwin_arm64.tar.gz"
  version "2.15.1"
  sha256 "7074d116c6254827fdc51fc29617f5dcb68f2b70b733de48251067cf0a8d86c6"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig", shell_output("#{bin}/jig version")
  end
end
