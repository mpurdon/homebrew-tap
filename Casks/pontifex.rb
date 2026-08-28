cask "pontifex" do
  version "0.1.1"
  sha256 "892c8518105468a6e823a9d5af42c389cea16d7f13c3075cc3151ad87babadca"

  url "https://github.com/mpurdon/pontifex/releases/download/v#{version}/pontifex_#{version}_aarch64.app.tar.gz"
  name "Pontifex"
  desc "Bridge-keeper for an EventBridge event bus: browse, edit, validate and register schemas"
  homepage "https://github.com/mpurdon/pontifex"

  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Pontifex.app"

  caveats <<~EOS
    Pontifex is not signed with an Apple Developer ID or notarized yet.
    If macOS blocks the first launch, right-click the app and choose
    Open, or clear quarantine with:
      xattr -dr com.apple.quarantine /Applications/Pontifex.app
  EOS

  zap trash: [
    "~/Library/Application Support/dev.codenaked.pontifex",
    "~/Library/Caches/dev.codenaked.pontifex",
    "~/Library/Logs/dev.codenaked.pontifex",
  ]
end
