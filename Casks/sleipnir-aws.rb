cask "sleipnir-aws" do
  version "0.1.10"
  sha256 "e4b965f551e1456c2d798110863fa1ede9d0f717c6de8037b2c905cc8c16a1f3"

  url "https://github.com/mpurdon/sleipnir/releases/download/v#{version}/sleipnir_#{version}_aarch64.app.tar.gz"
  name "Sleipnir"
  desc "Norse-themed AWS SSO credential manager with one-click project engagement"
  homepage "https://github.com/mpurdon/sleipnir"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "sleipnir.app"
  # Puts `sleipnir` on PATH: launches the GUI, and carries the
  # `sleipnir creds --profile <name>` credential helper. A bare invocation
  # detaches itself (see src-tauri/src/launch.rs); `--foreground` opts out.
  binary "#{appdir}/sleipnir.app/Contents/MacOS/sleipnir"

  zap trash: [
    "~/.sleipnir",
    "~/Library/Logs/dev.purdonmoi.sleipnir",
  ]

  caveats <<~EOS
    Signed and notarized — no Gatekeeper workarounds needed.
    Open sleipnir, log in to your org, and engage away.

    `sleipnir` is now on your PATH and detaches from the terminal on its
    own. Use `sleipnir --foreground` when you want the log on stdout.
  EOS
end
