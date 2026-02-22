class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.10.0/jig_darwin_arm64.tar.gz"
  version "2.10.0"
  sha256 "b797898a39de3ecd2a0d2ab9e569dcb7312592a3fcac50e36a7223e9a5ada0e0"
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
