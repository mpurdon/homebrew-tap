class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.277/gitf"
  sha256 "fca3d660a5eb0cc56edc6c09af0fdcc908c26f25af1a6f37b7f335ac905ce0ac"
  version "0.65.277"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
