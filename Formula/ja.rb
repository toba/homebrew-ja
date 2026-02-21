class Ja < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/skill"
  url "https://github.com/toba/skill/releases/download/v1.2.2/ja_darwin_arm64.tar.gz"
  version "1.2.2"
  sha256 "90e068be9ec939561398032a2b69aed8cdd87f2cb311ceb3a8e91a67a488b761"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "ja"
  end

  test do
    assert_match "ja", shell_output("#{bin}/ja version")
  end
end
