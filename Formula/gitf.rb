class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.326/gitf"
  sha256 "3abb919d2b7d71599f883de3c7847a2a7e2e272c7a992115ce808c31acefb9cd"
  version "0.65.326"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
