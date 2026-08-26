cask "sleipnir" do
  version "0.1.1"
  sha256 "bd3aada0b16e518b5f6a7c24806d80acf04a6aca8dcc8035bc939934570b4289"

  url "https://github.com/mpurdon/sleipnir/releases/download/v#{version}/sleipnir_#{version}_aarch64.app.tar.gz"
  name "Sleipnir"
  desc "Norse-themed AWS SSO credential manager with one-click project engagement"
  homepage "https://github.com/mpurdon/sleipnir"

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "sleipnir.app"

  caveats <<~EOS
    sleipnir is not signed with an Apple Developer ID or notarized yet.
    If macOS blocks the first launch, right-click the app and choose
    Open, or clear quarantine with:
      xattr -dr com.apple.quarantine /Applications/sleipnir.app

    After first launch, re-ENGAGE your services once so your AWS
    profiles' credential_process points at the installed app.
  EOS

  zap trash: [
    "~/.sleipnir",
    "~/Library/Logs/dev.purdonmoi.sleipnir",
  ]
end
