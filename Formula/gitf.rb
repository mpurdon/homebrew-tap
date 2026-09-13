class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.339/gitf"
  sha256 "a5e8f406c6d1c00127596cccc3373c7c55642b6201ee9bed2ff9c0c0af8cc5b8"
  version "0.65.339"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
