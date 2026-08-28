cask "pontifex" do
  version "0.1.0"
  sha256 "492c99fa447f943bf557d998eebb144ddbc61600590c709c6b828f10912bca17"

  url "https://github.com/mpurdon/pontifex/releases/download/v#{version}/pontifex_#{version}_aarch64.app.tar.gz"
  name "pontifex"
  desc "Bridge-keeper for an EventBridge event bus: browse, edit, validate and register schemas"
  homepage "https://github.com/mpurdon/pontifex"

  depends_on arch: :arm64
  depends_on macos: :catalina

  app "pontifex.app"

  caveats <<~EOS
    pontifex is not signed with an Apple Developer ID or notarized yet.
    If macOS blocks the first launch, right-click the app and choose
    Open, or clear quarantine with:
      xattr -dr com.apple.quarantine /Applications/pontifex.app
  EOS

  zap trash: [
    "~/Library/Application Support/dev.codenaked.pontifex",
    "~/Library/Caches/dev.codenaked.pontifex",
    "~/Library/Logs/dev.codenaked.pontifex",
  ]
end
