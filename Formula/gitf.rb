class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.319/gitf"
  sha256 "434aeee89c9cc1d1b371bce8cea20afcc77786bf88a17bf96df4d29397fd7741"
  version "0.65.319"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
