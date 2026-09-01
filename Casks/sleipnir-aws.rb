cask "sleipnir-aws" do
  version "0.1.5"
  sha256 "135257d23fdde9746c8d88f7f0367b8b922bf572ea1e65ba483253b1eb5d22b4"

  url "https://github.com/mpurdon/sleipnir/releases/download/v#{version}/sleipnir_#{version}_aarch64.app.tar.gz"
  name "Sleipnir"
  desc "Norse-themed AWS SSO credential manager with one-click project engagement"
  homepage "https://github.com/mpurdon/sleipnir"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "sleipnir.app"
  # Puts `sleipnir` on PATH: launches the GUI, and carries the
  # `sleipnir creds --profile <name>` credential helper. Note this runs the
  # app in the foreground, attached to the terminal — use `open -a sleipnir`
  # (or append &) when you want it detached.
  binary "#{appdir}/sleipnir.app/Contents/MacOS/sleipnir"

  zap trash: [
    "~/.sleipnir",
    "~/Library/Logs/dev.purdonmoi.sleipnir",
  ]

  caveats <<~EOS
    Signed and notarized — no Gatekeeper workarounds needed.
    Open sleipnir, log in to your org, and engage away.

    `sleipnir` is now on your PATH. It runs in the foreground; use
    `open -a sleipnir` to launch it detached from the terminal.
  EOS
end
