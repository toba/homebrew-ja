class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.11.9/jig_darwin_arm64.tar.gz"
  version "2.11.9"
  sha256 "800a5d53db8bafd67c83ac21ff37accf6acf438d68e8a5cbd822c95aa9c29a6f"
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
