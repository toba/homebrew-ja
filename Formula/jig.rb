class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.15.2/jig_darwin_arm64.tar.gz"
  version "2.15.2"
  sha256 "f37b7985bf4ee7f3b18cd765e8db71c1d409048734d5e629cbe7a7595e632f0d"
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
