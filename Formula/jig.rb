class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.12.0/jig_darwin_arm64.tar.gz"
  version "2.12.0"
  sha256 "978a5ee4cdfc40b1e6ad5624749c82830cf8d8163e675b19a4818b29f99203fa"
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
