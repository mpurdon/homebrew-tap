cask "sleipnir" do
  version "0.1.0"
  sha256 "f585a5fa0a97eb50591e528226da8f165804777067d0419bca1afb539218869f"

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
    Open, or install with:
      brew install --cask --no-quarantine mpurdon/tap/sleipnir

    After first launch, re-ENGAGE your services once so your AWS
    profiles' credential_process points at the installed app.
  EOS

  zap trash: [
    "~/.sleipnir",
    "~/Library/Logs/dev.purdonmoi.sleipnir",
  ]
end
