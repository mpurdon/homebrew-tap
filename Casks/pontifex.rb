cask "pontifex" do
  version "0.1.2"
  sha256 "4924f13fd2d1fb87562a6fed261e205a1d018ceefdb310c2e217be4596ecdfbb"

  url "https://github.com/mpurdon/pontifex/releases/download/v#{version}/pontifex_#{version}_aarch64.app.tar.gz"
  name "Pontifex"
  desc "Browse, edit, validate and register EventBridge event bus schemas"
  homepage "https://github.com/mpurdon/pontifex"

  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Pontifex.app"

  zap trash: [
    "~/Library/Application Support/dev.codenaked.pontifex",
    "~/Library/Caches/dev.codenaked.pontifex",
    "~/Library/Logs/dev.codenaked.pontifex",
  ]

  caveats <<~EOS
    Pontifex is not signed with an Apple Developer ID or notarized yet.
    If macOS blocks the first launch, right-click the app and choose
    Open, or clear quarantine with:
      xattr -dr com.apple.quarantine /Applications/Pontifex.app
  EOS
end
