class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.5.0/jig_darwin_arm64.tar.gz"
  version "2.5.0"
  sha256 "462af6a367223e3bd951eed8cb5bc15c47f8c9071239c3ad9999464e1de4132d"
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
