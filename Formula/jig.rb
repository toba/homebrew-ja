class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.14.0/jig_darwin_arm64.tar.gz"
  version "2.14.0"
  sha256 "957e81eb976440d2866267f4f12e154d8955112ce6d1ae8b4aa5838ea314a94e"
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
