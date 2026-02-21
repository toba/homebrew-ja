class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.3.0/jig_darwin_arm64.tar.gz"
  version "2.3.0"
  sha256 "3ceb14bb12a3c09f4c0df4189d95b59629be4ea833745bdd80b338f59a633b71"
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
